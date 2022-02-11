const {Server} = require('node-osc');
let oscServer = new Server(3333, '127.0.0.1');
let oscServer2 = new Server(8888, '127.0.0.1');

const {Builder, By, Key, until} = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');

let event_id = process.argv[2];
if(event_id == undefined){
    event_id = "8c144b10-81eb-4fc1-84db-d605cb6a5c44";
    console.log(`running by \"ワレシラズオドルDay2_リハ会場\" [${event_id}]`);
}else{
    console.log(`running by \"${event_id}\"`);
}

const options = new chrome.Options();
options.addArguments('--user-data-dir=C:\\temp\\club_sincere\\Profile_2');
options.addArguments('--headless');
let driver = new Builder().forBrowser('chrome').setChromeOptions(options).build();

//start async
async function startup() {
    await driver.get(`https://cluster.mu/e/${event_id}/trigger`);
    await driver.sleep(2000);
    let element = driver.findElement(By.xpath('//*[@id="InputArea"]'));
    element.sendKeys(__dirname + "/WebTriggers/S2L_Triggers.json");
}
startup();
let replaced_msg = '';
oscServer.on('message', function (msg) {
    console.log(`Message: ${msg}`);
    try {
        switch (Number(msg[0].replace('/eos/user/0/chan/', ''))) {
            case 1:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_100"]')).click();
                }
                break
            case 2:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_100"]')).click();
                }
                break
            case 3:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_100"]')).click();
                }
                break
            case 4:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_100"]')).click();
                }
                break
            case 5:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_0"]')).click();
                } else if (msg[1] == 100) {
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
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Bass_100"]')).click();
                }
                break
            case 2:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_LowMid_100"]')).click();
                }
                break
            case 3:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_HiMid_100"]')).click();
                }
                break
            case 4:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_High_100"]')).click();
                }
                break
            case 5:
                if (msg[1] == 0) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_0"]')).click();
                } else if (msg[1] == 100) {
                    driver.findElement(By.xpath('//*[text()="S2L_Trigger_Silence_100"]')).click();
                }
                break

        }
    } catch (e) {
    }
});

