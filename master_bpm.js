const midi = require('midi');
const {TapTempo} = require('tempo-tap');
let tempo = 0;

const {Builder, By, Key, until} = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');

const readlineSync = require('readline-sync');


const input_bpm = new midi.Input();

for (let i = 0; i < input_bpm.getPortCount(); i++) {
    console.log(`${i}: ${input_bpm.getPortName(i)}`);
}
let port = Number(readlineSync.question('Select midi port:'));

input_bpm.on('message', (deltaTime, message) => {
    if (message[0] == 144) {
        tempo = TapTempo.tap();
        // console.log(tempo);
    }
});

input_bpm.openPort(port);
input_bpm.ignoreTypes(false, false, false);


//set selenium option Profile folder
const options_bpm = new chrome.Options();
options_bpm.addArguments('user-data-dir=/temp/club_sincere/Profile_1');
let driver = new Builder().forBrowser('chrome').setChromeOptions(options_bpm).build();
//selenium implicitly_wait
driver.get('https://cluster.mu/account/events');
driver.findElement(By.xpath('//*[text()="JSONを読み込む"]')).sendKeys("WebTriggers/S2L_Triggers.json");
setInterval(() => {
    //find element by text "MasterBPM_"
    try {
        switch (true) {
            case tempo <= 45:
                //click element by text "MasterBPM_45"
                driver.findElement(By.xpath('//*[text()="MasterBPM_45"]')).click();
                break
            case tempo <= 90:
                //click element by text "MasterBPM_90"
                driver.findElement(By.xpath('//*[text()="MasterBPM_90"]')).click();
                break
            case tempo <= 120:
                //click element by text "MasterBPM_120"
                driver.findElement(By.xpath('//*[text()="MasterBPM_120"]')).click();
                break
            case tempo <= 150:
                //click element by text "MasterBPM_150"
                driver.findElement(By.xpath('//*[text()="MasterBPM_150"]')).click();
                break
            case tempo <= 180:
                //click element by text "MasterBPM_180"
                driver.findElement(By.xpath('//*[text()="MasterBPM_180"]')).click();
                break
            case tempo <= 210:
                //click element by text "MasterBPM_210"
                driver.findElement(By.xpath('//*[text()="MasterBPM_210"]')).click();
                break
            case tempo <= 420:
                //click element by text "MasterBPM_240"
                driver.findElement(By.xpath('//*[text()="MasterBPM_420"]')).click();
                break
        }
    } catch (e) {
    }
}, 1000);