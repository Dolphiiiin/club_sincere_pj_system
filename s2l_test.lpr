{
    "anchors": {
        "anchorOrder": [
        ]
    },
    "backgroundName": "blueprint_grey_tiled.jpg",
    "blocks": [
        {
            "focused": false,
            "height": 400,
            "internalState": {
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "page": 1,
                "sceneGroup": 0
            },
            "name": "Eos Fader Bank",
            "nodeMergeModes": {
            },
            "posX": -120,
            "posY": -130,
            "uid": "16440420633478",
            "width": 900
        },
        {
            "focused": false,
            "height": 128,
            "internalState": {
                "agcEnabled": true,
                "bandwidth": 0.1,
                "currentBand": 0.5,
                "frequencyMode": false,
                "group": "",
                "guiItemHidden": false,
                "inputName": "Headset Microphone (Oculus Virtual Audio Device) Left",
                "label": "",
                "manualGain": 8,
                "sceneGroup": 0,
                "showSpectrogram": false,
                "upperBound": 0.8
            },
            "name": "Audio Level",
            "nodeMergeModes": {
            },
            "posX": 780,
            "posY": 352,
            "uid": "16440424087464",
            "width": 256
        },
        {
            "focused": false,
            "height": 90,
            "internalState": {
                "agcEnabled": true,
                "group": "",
                "guiItemHidden": false,
                "inputName": "Headset Microphone (Oculus Virtual Audio Device) Left",
                "label": "",
                "sceneGroup": 0
            },
            "name": "Audio Volume",
            "nodeMergeModes": {
            },
            "posX": 810,
            "posY": 600,
            "uid": "16440424275827",
            "width": 150
        },
        {
            "focused": false,
            "height": 220,
            "internalState": {
                "factor": 1,
                "group": "",
                "guiItemHidden": false,
                "inputName": "VoiceMeeter Aux Output (VB-Audio VoiceMeeter AUX VAIO) Right",
                "label": "",
                "minBpm": 75,
                "sceneGroup": 0
            },
            "name": "Beat Detection",
            "nodeMergeModes": {
            },
            "posX": 570,
            "posY": 710,
            "uid": "16440424401292",
            "width": 600
        },
        {
            "focused": true,
            "height": 30,
            "internalState": {
                "additionalValueString": "DMX Value 255",
                "currentValue": 1,
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "sceneGroup": 0
            },
            "name": "Value Inspector",
            "nodeMergeModes": {
                "0": true
            },
            "posX": 1110,
            "posY": 570,
            "uid": "16440425063538",
            "width": 140
        },
        {
            "focused": false,
            "height": 300,
            "internalState": {
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "sceneGroup": 0
            },
            "name": "OSC Monitor",
            "nodeMergeModes": {
            },
            "posX": 1350,
            "posY": 240,
            "uid": "16440425221894",
            "width": 450
        },
        {
            "focused": false,
            "height": 60,
            "internalState": {
                "channel": 1,
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "sceneGroup": 0,
                "target": 1,
                "useDefaultChannel": true
            },
            "name": "MIDI Control Out",
            "nodeMergeModes": {
                "0": true
            },
            "posX": 1500,
            "posY": 630,
            "uid": "16440426306266",
            "width": 120
        },
        {
            "focused": false,
            "height": 329,
            "internalState": {
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "sceneGroup": 0
            },
            "name": "MIDI Monitor",
            "nodeMergeModes": {
            },
            "posX": 1830,
            "posY": 211,
            "uid": "16440426393408",
            "width": 450
        },
        {
            "focused": false,
            "height": 60,
            "internalState": {
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "maxValue": 1,
                "message": "/luminosus/bpm=<value>",
                "minValue": 0,
                "negativeMaxValue": false,
                "negativeMinValue": false,
                "sceneGroup": 0,
                "useInteger": false
            },
            "name": "OSC Out",
            "nodeMergeModes": {
                "0": true
            },
            "posX": 1350,
            "posY": 720,
            "uid": "16440428461690",
            "width": 255
        },
        {
            "focused": false,
            "height": 60,
            "internalState": {
                "group": "",
                "guiItemHidden": false,
                "label": "",
                "maxValue": 1,
                "message": "/s2l/out/bpm",
                "minValue": 0,
                "sceneGroup": 0
            },
            "name": "OSC In",
            "nodeMergeModes": {
            },
            "posX": 895,
            "posY": 534,
            "uid": "16440432405606",
            "width": 144
        }
    ],
    "connections": [
        "16440432405606|0->16440425063538|0"
    ],
    "displayedGroup": "",
    "fileName": "No Project (Crashed)",
    "midiMapping": {
        "controlToFeedback": "AAAAIQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAANwAAAAEAAAAIAEMAUQBFAFAAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABzAHQAbwBwADYAAAABAAAACABDAFEARQBPAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAcwB0AG8AcAA1AAAAAQAAAAgAQwBRAEUATgAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAANAAAAAEAAAAIAEMAUQBFAE0AAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABzAHQAbwBwADMAAAABAAAACABDAFEARQBMAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAcwB0AG8AcAAyAAAAAQAAAAgAQwBRAEUASwAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAAMQAAAAEAAAAIAEMAUQBFAEoAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABzAHQAbwBwADAAAAABAAAACABDAFEARQBJAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAA3AAAAAQAAAAgAQwBRAEYASAAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGwAbwBhAGQANgAAAAEAAAAIAEMAUQBGAEcAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABsAG8AYQBkADUAAAABAAAACABDAFEARgBGAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAA0AAAAAQAAAAgAQwBRAEYARQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGwAbwBhAGQAMwAAAAEAAAAIAEMAUQBGAEQAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABsAG8AYQBkADIAAAABAAAACABDAFEARgBDAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAAxAAAAAQAAAAgAQwBRAEYAQgAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGwAbwBhAGQAMAAAAAEAAAAIAEMAUQBGAEEAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANwAAAAEAAAAIAEMAUQBFAEgAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANgAAAAEAAAAIAEMAUQBFAEcAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANQAAAAEAAAAIAEMAUQBFAEYAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANAAAAAEAAAAIAEMAUQBFAEUAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8AMwAAAAEAAAAIAEMAUQBFAEQAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8AMgAAAAEAAAAIAEMAUQBFAEMAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8AMQAAAAEAAAAIAEMAUQBFAEIAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8AMAAAAAEAAAAIAEMAUQBFAEEAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAOAAAAAEAAAAIAEMAdwBFADQAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIANwAAAAEAAAAIAEMAdwBFADMAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIANgAAAAEAAAAIAEMAdwBFADIAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIANQAAAAEAAAAIAEMAdwBFADEAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIANAAAAAEAAAAIAEMAdwBFADAAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMwAAAAEAAAAIAEMAdwBFAHoAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMgAAAAEAAAAIAEMAdwBFAHkAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMQAAAAEAAAAIAEMAdwBFAHgAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMAAAAAEAAAAIAEMAdwBFAHc=",
        "feedbackEnabled": false,
        "midiToControl": "AAAAIQAAABIAMAAxADEAMAAwADEAMAA1ADYAAAABAAAAKAAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZgBhAGQAZQByADgAAAASADAAMQAxADAAMAAxADAANQA1AAAAAQAAACgAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGYAYQBkAGUAcgA3AAAAEgAwADEAMQAwADAAMQAwADUANAAAAAEAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIANgAAABIAMAAxADEAMAAwADEAMAA1ADMAAAABAAAAKAAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZgBhAGQAZQByADUAAAASADAAMQAxADAAMAAxADAANQAyAAAAAQAAACgAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGYAYQBkAGUAcgA0AAAAEgAwADEAMQAwADAAMQAwADUAMQAAAAEAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMwAAABIAMAAxADEAMAAwADEAMAA1ADAAAAABAAAAKAAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZgBhAGQAZQByADIAAAASADAAMQAxADAAMAAxADAANAA5AAAAAQAAACgAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGYAYQBkAGUAcgAxAAAAEgAwADEAMQAwADAAMQAwADQAOAAAAAEAAAAoADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABmAGEAZABlAHIAMAAAABIAMAAwADkAMAAwADEAMAA3ADEAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAA3AAAAEgAwADAAOQAwADAAMQAwADcAMAAAAAEAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABsAG8AYQBkADYAAAASADAAMAA5ADAAMAAxADAANgA5AAAAAQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGwAbwBhAGQANQAAABIAMAAwADkAMAAwADEAMAA2ADgAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAA0AAAAEgAwADAAOQAwADAAMQAwADYANwAAAAEAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABsAG8AYQBkADMAAAASADAAMAA5ADAAMAAxADAANgA2AAAAAQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGwAbwBhAGQAMgAAABIAMAAwADkAMAAwADEAMAA2ADUAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAbABvAGEAZAAxAAAAEgAwADAAOQAwADAAMQAwADYANAAAAAEAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABsAG8AYQBkADAAAAASADAAMAA5ADAAMAAxADAAMQA1AAAAAQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAANwAAABIAMAAwADkAMAAwADEAMAAxADQAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAcwB0AG8AcAA2AAAAEgAwADAAOQAwADAAMQAwADEAMwAAAAEAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABzAHQAbwBwADUAAAASADAAMAA5ADAAMAAxADAAMQAyAAAAAQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAANAAAABIAMAAwADkAMAAwADEAMAAxADEAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAcwB0AG8AcAAzAAAAEgAwADAAOQAwADAAMQAwADEAMAAAAAEAAAAmADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABzAHQAbwBwADIAAAASADAAMAA5ADAAMAAxADAAMAA5AAAAAQAAACYAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AHMAdABvAHAAMQAAABIAMAAwADkAMAAwADEAMAAwADgAAAABAAAAJgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAcwB0AG8AcAAwAAAAEgAwADAAOQAwADAAMQAwADAANwAAAAEAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANwAAABIAMAAwADkAMAAwADEAMAAwADYAAAABAAAAIgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZwBvADYAAAASADAAMAA5ADAAMAAxADAAMAA1AAAAAQAAACIAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGcAbwA1AAAAEgAwADAAOQAwADAAMQAwADAANAAAAAEAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8ANAAAABIAMAAwADkAMAAwADEAMAAwADMAAAABAAAAIgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZwBvADMAAAASADAAMAA5ADAAMAAxADAAMAAyAAAAAQAAACIAMQA2ADQANAAwADQAMgAwADYAMwAzADQANwA4AGcAbwAyAAAAEgAwADAAOQAwADAAMQAwADAAMQAAAAEAAAAiADEANgA0ADQAMAA0ADIAMAA2ADMAMwA0ADcAOABnAG8AMQAAABIAMAAwADkAMAAwADEAMAAwADAAAAABAAAAIgAxADYANAA0ADAANAAyADAANgAzADMANAA3ADgAZwBvADA="
    },
    "planeX": -602,
    "planeY": 197,
    "version": 0.1
}
