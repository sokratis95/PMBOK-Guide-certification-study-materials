// Usage: node print_pdf.js input.html output.pdf "Footer title"
const { chromium } = require('playwright');
(async () => {
  const [,, input, output, title] = process.argv;
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto('file://' + input, { waitUntil: 'networkidle' });
  await page.emulateMedia({ media: 'print' });
  await page.pdf({
    path: output, format: 'A4', printBackground: true, preferCSSPageSize: true,
    displayHeaderFooter: true,
    headerTemplate: '<div></div>',
    footerTemplate: '<div style="width:100%;font-family:Inter,DejaVu Sans,sans-serif;font-size:7.5pt;color:#6b7785;padding:0 16mm;display:flex;justify-content:space-between;">' +
      '<span>' + (title || '').replace(/[<>&]/g, '') + '</span><span><span class="pageNumber"></span> / <span class="totalPages"></span></span></div>',
    margin: { top: '18mm', bottom: '20mm', left: '16mm', right: '16mm' },
  });
  await browser.close();
})().catch(e => { console.error(e); process.exit(1); });
