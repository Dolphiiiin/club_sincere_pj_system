const {Client} = require('node-osc');
let oscClient = new Client('127.0.0.1', '8888');

const midi = require('midi');
const {Builder, By, Key, until} = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');

const readlineSync = require('readline-sync');
const input = new midi.input();
for (let i = 0; i < input.getPortCount(); i++) {
    console.log(`${i}: ${input.getPortName(i)}`);
}
let port = Number(readlineSync.question('Select midi port:'));

let osc_mute = JSON.parse('{"bass": 0,"lo_mid": 0,"hi_mid": 0,"high":0}');
console.log(osc_mute)
input.on('message', (deltaTime, message) => {
    console.log(`MIDI message received: ${message}`);
    //switch case for message type
    switch (message[1]) {
        case 64:
            if (message[0] == 144) {
                oscClient.send('/s2l/out/bass/mute', Number(!osc_mute.bass));
                osc_mute.bass = !osc_mute.bass;
            }
            break;
        case 48:
            oscClient.send('/s2l/out/bass', Number(message[2] * 0.78));
            break;
        default:
            console.log(`Unsupported MIDI message: ${message}`);
    }
});
input.openPort(port);
input.ignoreTypes(false, false, false);