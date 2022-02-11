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

input_bpm.openPort(port);

input_bpm.ignoreTypes(false, false, false);
//set selenium option Profile folder


const options1 = new chrome.Options();
options1.addArguments('user-data-dir=/temp/club_sincere/DMX/Profile_1');
let driver1 = new Builder().forBrowser('chrome').setChromeOptions(options1).build();
//selenium implicitly_wait
driver1.get('https://cluster.mu/account/events');
driver1.findElement(By.xpath('//*[text()="JSONを読み込む"]')).sendKeys("WebTriggers/S2L_Triggers.json");

const options2 = new chrome.Options();
options2.addArguments('user-data-dir=/temp/club_sincere/DMX/Profile_2');
let driver2 = new Builder().forBrowser('chrome').setChromeOptions(options2).build();
//selenium implicitly_wait
driver2.get('https://cluster.mu/account/events');


input_bpm.on('message', (deltaTime, message) => {
    let value = message[2];
    if(value == 0 | value%5 == 0 | value == 127){
        console.log(message);
        switch (message[1]) {
            case 48:
                driver1.findElement(By.xpath(`//*[text()="dimmer_1.${value}"]`)).click();
                break;
            case 49:
                driver2.findElement(By.xpath(`//*[text()="dimmer_2.${value}"]`)).click();
                break;
            case 50:
                // driver3.findElement(By.xpath(`//*[text()="blue.${value}"]`)).click();
                break;
        }
    }
});
