
let reference_json = {
    "showConfirmDialog": false,
    "displayName": "",
    "category": "",
    "state": [
        {
            "key": "",
            "type": "float",
            "value": 0,
        }
    ],
    "color": [0.0, 1.0, 0.0]
};

reference_json.category = "red";
reference_json.state[0].key = "red";
reference_json.color = [1.0, 0.0, 0.0];
for (let i = 0; i <= 127; i++){
  reference_json.displayName = `red.${i}`;
  reference_json.state[0].value = i * (255/127);
  console.log(JSON.stringify(reference_json));
  console.log(",")
}
reference_json.category = "green";
reference_json.state[0].key = "green";
reference_json.color = [0.0, 1.0, 0.0];
for (let i = 0; i <= 127; i++){
  reference_json.displayName = `green.${i}`;
  reference_json.state[0].value = i * (255/127);
  console.log(JSON.stringify(reference_json));
    console.log(",")
}
reference_json.category = "blue";
reference_json.state[0].key = "blue";
reference_json.color = [0.0, 0.0, 1.0];
for (let i = 0; i <= 127; i++){
  reference_json.displayName = `blue.${i}`;
  reference_json.state[0].value = i * (255/127);
  console.log(JSON.stringify(reference_json));
    console.log(",")
}


