const {Server} = require('node-osc');
let oscServer = new Server(3333, '127.0.0.1');
let oscServer2 = new Server(8888, '127.0.0.1');
// const {Client} = require('node-osc');
// let oscClient = new Client('4444', '127.0.0.1');
//
// const midi = require('midi');
const {Builder, By, Key, until} = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');
//
// const readlineSync = require('readline-sync');
// const input = new midi.input();
// for (let i = 0; i < input.getPortCount(); i++) {
//     console.log(`${i}: ${input.getPortName(i)}`);
// }
// let port = Number(readlineSync.question('Select midi port:'));
//
// input.on('message', (deltaTime, message) => {
//     console.log(`MIDI message received: ${message}`);
//     //switch case for message type
//     switch (message[1]){
//         case 48:
//             oscClient.send('/s2l/out/bass', message[2]*0.78*0.01);
//             break;
//         default:
//             console.log(`Unsupported MIDI message: ${message}`);
//     }
// });
// input.openPort(port);
// input.ignoreTypes(false, false, false);

//set selenium option Profile folder
const options_bpm = new chrome.Options();
options_bpm.addArguments('user-data-dir=/temp/club_sincere/Profile_2 ');
let driver = new Builder().forBrowser('chrome').setChromeOptions(options_bpm).build();
//selenium implicitly_wait
driver.get('https://cluster.mu/account/events');

let replaced_msg = '';
oscServer.on('message', function (msg) {
    console.log(`Message: ${msg}`);
    try {
        switch (Number(msg[0].replace('/eos/user/0/chan/', ''))) {
            case 1:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_100"]')).click();
                }
                break
            case 2:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_100"]')).click();
                }
                break
            case 3:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_100"]')).click();
                }
                break
            case 4:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_100"]')).click();
                }
                break
            case 5:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_100"]')).click();
                }
                break

        }
    } catch (e) {
    }
});
oscServer2.on('message', function (msg) {
    console.log(`Message: ${msg}`);
    try {
        switch (Number(msg[0].replace('/eos/user/0/chan/', ''))) {
            case 1:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_100"]')).click();
                }
                break
            case 2:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_100"]')).click();
                }
                break
            case 3:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_100"]')).click();
                }
                break
            case 4:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_100"]')).click();
                }
                break
            case 5:
                if(msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_0"]')).click();
                }else if(msg[1] == 100){
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_100"]')).click();
                }
                break

        }
    } catch (e) {
    }
});

