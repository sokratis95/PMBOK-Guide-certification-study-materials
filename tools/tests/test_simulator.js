const { chromium } = require('playwright');
const path = require('path');
const fs = require('fs');
// Usage: node tools/tests/<this file> [OUTPUT_DIR]; SIM_FILE overrides the page under test.
const FILE = process.env.SIM_FILE || 'file://' + path.resolve(__dirname, '..', '..', '04_PMP_Exam_Simulator.html');
const SHOTS = process.argv[2] || path.join(__dirname, 'out');
fs.mkdirSync(SHOTS, { recursive: true });
const errors = [];
const shot = async (page, name, full = false) => page.screenshot({ path: path.join(SHOTS, name + '.png'), fullPage: full });

async function answerCurrent(page, mode) {
  // answer the visible question; mode 'first' picks option A / first letters, 'right' would need data
  const type = await page.evaluate(() => {
    if (document.getElementById('fill-in')) return 'fill';
    if (document.querySelector('.mrows')) return 'match';
    const c = document.querySelector('.opts input');
    return c ? c.type : 'none';
  });
  if (type === 'radio') await page.keyboard.press('1');
  else if (type === 'checkbox') { await page.keyboard.press('1'); await page.keyboard.press('2'); }
  else if (type === 'match') { for (let r = 0; r < 4; r++) await page.click(`label[for="m-${r}-${r}"]`); }
  else if (type === 'fill') { await page.fill('#fill-in', '$1,000'); await page.locator('#main').focus(); }
  return type;
}

(async () => {
  const browser = await chromium.launch();
  const ctx = await browser.newContext({ viewport: { width: 1280, height: 900 } });
  const page = await ctx.newPage();
  page.on('console', m => { if (m.type() === 'error') errors.push('console: ' + m.text()); });
  page.on('pageerror', e => errors.push('pageerror: ' + e.message));
  await page.goto(FILE);
  await page.waitForTimeout(500);
  await shot(page, '01_home', true);

  // timed exam 01
  await page.click('[data-act="start"][data-kind="exam"][data-exam="1"]');
  await shot(page, '02_intro');
  await page.click('[data-act="begin"]');
  await page.waitForTimeout(300);
  await shot(page, '03_q1');
  // q1 answer + flag + strike
  await page.keyboard.press('3');
  await page.keyboard.press('f');
  await page.click('#strike-0');
  await shot(page, '04_q1_answered');
  await page.keyboard.press('ArrowRight');
  // go through section 1
  const types = {};
  for (let q = 2; q <= 60; q++) {
    const t = await answerCurrent(page);
    types[t] = (types[t] || 0) + 1;
    if (q === 5) await shot(page, '05_multi');
    if (q === 32) await shot(page, '06_case');
    if (q === 34) await shot(page, '07_fill');
    if (q === 38) await shot(page, '08_match');
    await page.click('#btn-next');
  }
  console.log('types sec1', JSON.stringify(types));
  await shot(page, '09_section_review', true);
  await page.click('[data-act="end-section"]');
  await shot(page, '10_end_dialog');
  await page.click('dialog#dlg button[value="ok"]');
  await shot(page, '11_break_offer');
  await page.click('[data-act="start-break"]');
  await page.waitForTimeout(1200);
  await shot(page, '12_break');
  await page.click('[data-act="end-break"]');
  const pos2 = await page.textContent('.qnum');
  console.log('after break:', pos2);
  // navigator
  await page.click('[data-act="nav"]');
  await shot(page, '13_navigator');
  await page.keyboard.press('Escape');
  // calculator
  await page.click('[data-act="calc"]');
  await page.keyboard.type('1080000/1350000');
  await shot(page, '14_calc');
  const calcOut = await page.textContent('#calc-out');
  console.log('calc:', calcOut);
  await page.keyboard.press('Escape');
  for (let q = 61; q <= 120; q++) { await answerCurrent(page); await page.click('#btn-next'); }
  await page.click('[data-act="end-section"]');
  await page.click('dialog#dlg button[value="ok"]');
  await page.click('[data-act="skip-break"]');
  for (let q = 121; q <= 170; q++) { await answerCurrent(page); await page.click('#btn-next'); }
  // leave 10 unanswered: jump to review via navigator
  await page.click('[data-act="nav"]');
  await page.click('dialog#sheet [data-act="sreview"]');
  await page.click('[data-act="subset"][data-sub="unanswered"]');
  console.log('subset pos:', await page.textContent('.xfoot .pos'));
  await page.click('#btn-next');
  // go back to review screen through next until review
  for (let k = 0; k < 12; k++) { if (await page.$('[data-act="end-section"]')) break; await page.click('#btn-next'); }
  await page.click('[data-act="end-section"]');
  await page.click('dialog#dlg button[value="ok"]');
  await page.waitForTimeout(400);
  await shot(page, '15_results', true);
  console.log('hero:', await page.textContent('.hero'), '|', await page.textContent('.hero-sub'));
  await page.click('[data-act="review"][data-f="all"]');
  await shot(page, '16_review_top');
  await page.click('#rf-unanswered').catch(() => console.log('no unanswered chip'));
  console.log('unanswered cards:', await page.locator('.rcard').count(), JSON.stringify(await page.$$eval('.rcard .qnum', els => els.map(e => e.textContent))));
  await page.click('[data-act="results"]');
  await page.click('[data-act="home"]');
  await shot(page, '17_home_after', true);

  // practice exam 02
  await page.click('[data-act="start"][data-kind="practice"][data-exam="2"]');
  await page.keyboard.press('2');
  await page.keyboard.press('Enter');
  await page.waitForTimeout(200);
  await shot(page, '18_practice_feedback');
  // find a match and fill question in exam 2 via navigator
  const ex2 = await page.evaluate(() => JSON.parse(document.getElementById('pmp-data').textContent).exams[1].questions.map(q => q.type));
  const mi = ex2.indexOf('match'), fi = ex2.indexOf('fill'), ci = ex2.findIndex((t, i) => i > 0);
  await page.click('[data-act="nav"]');
  await page.click(`dialog#sheet [data-act="goto"][data-i="${mi}"]`);
  await answerCurrent(page);
  await page.click('#btn-check');
  await shot(page, '19_practice_match');
  await page.click('[data-act="nav"]');
  await page.click(`dialog#sheet [data-act="goto"][data-i="${fi}"]`);
  await page.fill('#fill-in', '206000');
  await page.keyboard.press('Enter');
  await shot(page, '20_practice_fill');
  const fillState = await page.getAttribute('.fill', 'class');
  console.log('fill', fi + 1, fillState);

  // reload: resume banner, then finish practice
  await page.reload();
  await page.waitForTimeout(400);
  await shot(page, '21_resume_banner');
  await page.click('[data-act="resume"]');
  await page.click('[data-act="nav"]');
  await page.click('dialog#sheet [data-act="finish"]');
  await page.click('dialog#dlg button[value="ok"]');
  console.log('practice hero:', await page.textContent('.hero'), '|', await page.textContent('.hero-sub'));
  await page.click('[data-act="home"]');

  // quiz
  await page.selectOption('#qz-domain', 'People');
  await page.selectOption('#qz-count', '10');
  console.log('pool:', await page.textContent('#qz-pool'));
  await page.click('#qz-start');
  console.log('quiz title:', await page.textContent('.xtitle strong'));
  await page.click('[data-act="exit"]');

  // time-up test through storage manipulation
  await page.click('[data-act="discard"]');
  await page.click('dialog#dlg button[value="ok"]');
  await page.click('[data-act="start"][data-kind="exam"][data-exam="3"]');
  await page.click('[data-act="begin"]');
  await page.keyboard.press('1');
  await page.click('[data-act="exit"]');
  await page.evaluate(() => { const s = JSON.parse(localStorage.getItem('pmp-sim:v1')); s.current.remainingMs = 2500; localStorage.setItem('pmp-sim:v1', JSON.stringify(s)); Storage.prototype.setItem = function () {}; });
  await page.reload();
  await page.click('[data-act="resume"]');
  await page.waitForTimeout(3500);
  console.log('timeup eyebrow:', await page.textContent('.res-head .eyebrow'));
  await shot(page, '22_timeup');

  // break auto-end
  await page.click('[data-act="home"]');
  await page.click('[data-act="start"][data-kind="exam"][data-exam="4"]');
  await page.click('[data-act="begin"]');
  await page.click('[data-act="exit"]');
  await page.evaluate(() => { const s = JSON.parse(localStorage.getItem('pmp-sim:v1')); s.current.phase = 'break'; s.current.breakMs = 1500; s.current.section = 0; localStorage.setItem('pmp-sim:v1', JSON.stringify(s)); Storage.prototype.setItem = function () {}; });
  await page.reload();
  await page.click('[data-act="resume"]');
  await page.waitForTimeout(2500);
  console.log('after auto break:', await page.textContent('.qnum'), '|', await page.textContent('.xtitle span'));

  // dark mode + mobile
  await page.click('[data-act="exit"]');
  await page.click('#theme-btn'); await page.click('#theme-btn');
  console.log('theme attr:', await page.getAttribute('html', 'data-theme'));
  await shot(page, '23_home_dark', true);
  await page.click('[data-act="results"]');
  await shot(page, '24_results_dark', true);
  await page.click('[data-act="home"]');
  await page.click('#theme-btn');
  console.log('theme attr after:', await page.getAttribute('html', 'data-theme'));

  const m = await browser.newContext({ viewport: { width: 390, height: 844 }, deviceScaleFactor: 2, hasTouch: true, isMobile: true });
  const mp = await m.newPage();
  mp.on('pageerror', e => errors.push('mobile pageerror: ' + e.message));
  await mp.goto(FILE);
  await mp.waitForTimeout(400);
  await shot(mp, '25_m_home', true);
  await mp.click('[data-act="start"][data-kind="exam"][data-exam="1"]');
  await mp.click('[data-act="begin"]');
  await shot(mp, '26_m_q1');
  for (let q = 1; q < 32; q++) await mp.click('#btn-next');
  await shot(mp, '27_m_case');
  await mp.click('#case-tog');
  await shot(mp, '28_m_case_collapsed');
  for (let q = 32; q < 38; q++) await mp.click('#btn-next');
  await shot(mp, '29_m_match', true);
  await mp.click('[data-act="calc"]');
  await shot(mp, '30_m_calc');
  const sw = await mp.evaluate(() => [document.documentElement.scrollWidth, window.innerWidth]);
  console.log('mobile scrollWidth/innerWidth', sw);
  console.log('ERRORS', JSON.stringify(errors));
  await browser.close();
})().catch(e => { console.error('FAIL', e); console.log('ERRORS', JSON.stringify(errors)); process.exit(1); });
