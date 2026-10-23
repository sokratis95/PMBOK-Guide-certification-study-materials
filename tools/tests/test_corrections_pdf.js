const { chromium } = require('playwright');
const path = require('path');
const fs = require('fs');
// Usage: node tools/tests/<this file> [OUTPUT_DIR]; SIM_FILE overrides the page under test.
const FILE = process.env.SIM_FILE || 'file://' + path.resolve(__dirname, '..', '..', '04_PMP_Exam_Simulator.html');
const OUT = process.argv[2] || path.join(__dirname, 'out');
fs.mkdirSync(OUT, { recursive: true });
const errors = [];
(async () => {
  const browser = await chromium.launch();
  const ctx = await browser.newContext({ viewport: { width: 1280, height: 900 }, acceptDownloads: true });
  const page = await ctx.newPage();
  page.on('pageerror', e => errors.push('pageerror: ' + e.message));
  page.on('console', m => { if (m.type() === 'error' || m.type() === 'warning') errors.push(m.type() + ': ' + m.text()); });
  await page.goto(FILE);
  await page.evaluate(() => {
    const D = JSON.parse(document.getElementById('pmp-data').textContent);
    const ex = D.exams[0];
    let seed = 11; const rnd = () => (seed = (seed * 16807) % 2147483647) / 2147483647;
    const answers = ex.questions.map(q => {
      if (q.type === 'match') return q.answer.map((a, i) => q.answer[(i + 1) % q.answer.length]);
      if (q.type === 'fill') return q.answer === '$400,000' ? null : '$1,234';
      const right = rnd() < 0.8;
      if (q.type === 'single') return right ? q.answer.slice() : [(q.answer[0] + 1) % 4];
      return right ? q.answer.slice() : [q.answer[0], [0, 1, 2, 3, 4].find(i => !q.answer.includes(i))].sort();
    });
    const n = ex.questions.length;
    const cur = { id: 'atest2', v: 1, kind: 'exam', examId: 1, refs: null, title: ex.title, meta: null, answers, flags: answers.map((a, i) => i % 9 === 1),
      checked: Array(n).fill(false), strikes: {}, pos: 120, section: 2, phase: 'review', subset: null, remainingMs: 12 * 60000, breakMs: 0, elapsedMs: 228 * 60000, startedAt: new Date().toISOString() };
    localStorage.setItem('pmp-sim:v1', JSON.stringify({ current: cur, history: [] }));
    Storage.prototype.setItem = function () {};
  });
  await page.reload();
  await page.click('[data-act="resume"]');
  await page.click('[data-act="end-section"]');
  await page.click('dialog#dlg button[value="ok"]');
  await page.waitForSelector('#pdf-btn');
  await page.waitForTimeout(1500);
  await page.screenshot({ path: path.join(OUT, 'results2.png') });
  const [dl] = await Promise.all([page.waitForEvent('download'), page.click('#pdf-btn')]);
  await dl.saveAs(path.join(OUT, 'exam2.pdf'));
  console.log('exam2:', dl.suggestedFilename(), '|', await page.textContent('#pdf-status'));
  // mixed exams: composition stats over 6 draws
  await page.click('[data-act="home"]');
  for (let k = 0; k < 6; k++) {
    await page.click('[data-act="mixed"]');
    if (await page.$('dialog#dlg[open]')) await page.click('dialog#dlg button[value="ok"]');
    await page.click('[data-act="begin"]');
    const info = await page.evaluate(() => {
      const D = JSON.parse(document.getElementById('pmp-data').textContent);
      const s = JSON.parse(localStorage.getItem('pmp-sim:v1'));
      const refs = s.current.refs, q = r => D.exams[r[0] - 1].questions[r[1]];
      const dom = {}, appr = {}, cases = {};
      refs.forEach((r, i) => { const Q = q(r); dom[Q.domain[0] + Q.domain[1]] = (dom[Q.domain[0] + Q.domain[1]] || 0) + 1; appr[Q.approach[0]] = (appr[Q.approach[0]] || 0) + 1; if (Q.case) (cases[Q.case] = cases[Q.case] || []).push(i); });
      const blocks = Object.values(cases).map(ix => ix[0] + '-' + ix[ix.length - 1] + (Math.floor(ix[0] / 60) === Math.floor(ix[ix.length - 1] / 60) ? '' : '!CROSS'));
      return s.current.title + ' n=' + refs.length + ' uniq=' + new Set(refs.map(r => r.join(':'))).size + ' ' + JSON.stringify(dom) + ' ' + JSON.stringify(appr) + ' cases ' + blocks.join(',');
    });
    console.log(info);
    await page.click('[data-act="exit"]');
  }
  await page.screenshot({ path: path.join(OUT, 'home2.png') });
  // mobile results
  const m = await browser.newContext({ viewport: { width: 390, height: 844 }, deviceScaleFactor: 2, isMobile: true, hasTouch: true });
  const mp = await m.newPage();
  await mp.goto(FILE);
  await mp.evaluate((s) => { localStorage.setItem('pmp-sim:v1', s); Storage.prototype.setItem = function () {}; }, await page.evaluate(() => localStorage.getItem('pmp-sim:v1')));
  await mp.reload();
  await mp.screenshot({ path: path.join(OUT, 'm_home_hist.png'), fullPage: true });
  await mp.evaluate(() => document.querySelector('[data-act="results"]').click());
  await mp.screenshot({ path: path.join(OUT, 'm_results.png') });
  console.log('ERRORS', JSON.stringify(errors));
  await browser.close();
})().catch(e => { console.error('FAIL', e); console.log('ERRORS', JSON.stringify(errors)); process.exit(1); });
