# Automating Puppeteer scripts
## Steps
- Open DevTools
- Go to Recorder Panel
- Start a recording
- Export the puppeteer script
- Place the puppeteer script into the script folder
- Run ./start.sh

## Tips for modifying the script
- How to show browser during testing
    - ``const browser = await puppeteer.launch({headless: false})``
- Prevent browser from closing
    - Remove the following line ``await browser.close()`` from the script
- Wait for pages to load completely
    - Add ``await targetPage.waitForNetworkIdle()`` before the actions





