const { chromium } = require('playwright');
const path = require('path');
const fs = require('fs');
// Usage: node tools/tests/<this file> [OUTPUT_DIR]; SIM_FILE overrides the page under test.
const FILE = process.env.SIM_FILE || 'file://' + path.resolve(__dirname, '..', '..', '04_PMP_Exam_Simulator.html');
const SHOTS = process.argv[2] || path.join(__dirname, 'out');
fs.mkdirSync(SHOTS, { recursive: true });
const errors = [];
(async () => {
  const browser = await chromium.launch();
  const page = await (await browser.newContext({ viewport: { width: 1280, height: 900 } })).newPage();
  page.on('pageerror', e => errors.push(e.message));
  page.on('console', m => { if (m.type() === 'error') errors.push(m.text()); });
  await page.goto(FILE);
  // calculator focus handling
  await page.click('[data-act="start"][data-kind="exam"][data-exam="4"]');
  await page.click('[data-act="begin"]');
  await page.click('[data-act="calc"]');
  for (const k of ['1', '2', '÷', '4']) await page.click(`#calc-keys [data-k="${k}"]`);
  await page.keyboard.press('5'); // focus on keypad button: should go to the calculator
  console.log('calc input:', await page.inputValue('#calc-in'), await page.textContent('#calc-out'));
  console.log('answer after typing in calc:', await page.evaluate(() => JSON.parse(localStorage.getItem('pmp-sim:v1') || '{}').current?.answers?.[0] ?? null));
  await page.keyboard.press('Escape');
  console.log('calc hidden:', await page.evaluate(() => document.getElementById('calc').hidden), 'focus:', await page.evaluate(() => document.activeElement.dataset.act || document.activeElement.id));
  await page.keyboard.press('2');
  await page.waitForTimeout(500);
  console.log('answer after Escape + 2:', await page.evaluate(() => JSON.parse(localStorage.getItem('pmp-sim:v1')).current.answers[0]));
  // jump to Q32 (choose three)
  await page.click('[data-act="nav"]');
  await page.click('dialog#sheet [data-act="goto"][data-i="31"]');
  console.log('Q32 chip:', await page.textContent('.qmeta .chip'));
  await page.keyboard.press('1'); await page.keyboard.press('2'); await page.keyboard.press('3'); await page.keyboard.press('4');
  console.log('hint:', await page.textContent('.hint'), '| toast:', await page.textContent('#toast'));
  await page.screenshot({ path: path.join(SHOTS, '31_choose_three.png') });
  await page.click('[data-act="exit"]');
  // keyboard-only practice
  await page.click('[data-act="discard"]'); await page.click('dialog#dlg button[value="ok"]');
  await page.click('[data-act="start"][data-kind="practice"][data-exam="5"]');
  await page.keyboard.press('b'); await page.keyboard.press('Enter');
  console.log('checked fb:', await page.textContent('.fb-h'));
  await page.keyboard.press('Enter');
  console.log('after enter:', await page.textContent('.qnum'));
  // fill question in exam 5 (Q6) with negative/ k formats
  await page.click('[data-act="nav"]');
  await page.click('dialog#sheet [data-act="goto"][data-i="5"]');
  await page.fill('#fill-in', '4 days');
  await page.keyboard.press('Enter');
  console.log('fill "4 days":', await page.getAttribute('.fill', 'class'));
  // mobile top bar
  const m = await browser.newContext({ viewport: { width: 375, height: 760 }, deviceScaleFactor: 2, isMobile: true, hasTouch: true });
  const mp = await m.newPage();
  mp.on('pageerror', e => errors.push('m: ' + e.message));
  await mp.goto(FILE);
  await mp.click('[data-act="start"][data-kind="exam"][data-exam="1"]');
  await mp.click('[data-act="begin"]');
  await mp.screenshot({ path: path.join(SHOTS, '32_m_topbar.png') });
  console.log('title width:', await mp.evaluate(() => [document.querySelector('.xtitle strong').scrollWidth, document.querySelector('.xtitle strong').clientWidth]));
  await mp.click('[data-act="exit"]');
  await mp.screenshot({ path: path.join(SHOTS, '33_m_home.png'), fullPage: true });
  console.log('ERRORS', JSON.stringify(errors));
  await browser.close();
})().catch(e => { console.error('FAIL', e); console.log('ERRORS', JSON.stringify(errors)); process.exit(1); });
