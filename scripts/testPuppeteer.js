const puppeteer = require("puppeteer")

async function testing() {
    const browser = await puppeteer.launch({
        headless: false
    })

    
}

testing()
