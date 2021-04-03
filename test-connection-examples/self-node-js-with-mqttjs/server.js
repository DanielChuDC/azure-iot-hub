var mqtt = require('mqtt')
const fs = require('fs');

var __dirname= "./"
var KEY = fs.readFileSync(__dirname + 'client.key');
var CERT = fs.readFileSync(__dirname + 'client.crt');
var TRUSTED_CA_LIST = fs.readFileSync(__dirname + 'ca.crt');

console.log(TRUSTED_CA_LIST)
var PORT = 8883
var HOST = "localhost"
const options = {
  clientId:"mqttjs01",
   port: PORT,
   host: HOST,
   protocol:'mqtt',
  // keyPath: KEY,
  // certPath: CERT,
  //rejectUnauthorized : false,
  //The CA list will be used to determine if server is authorized
  //ca: TRUSTED_CA_LIST,
  //secureProtocol: 'TLSv2_method',
  // secureProtocol: 'TLSv1_method',
  // protocolId: 'MQIsdp',
  // protocolVersion: 3
}


var client = mqtt.connect(options)

client.subscribe('messages')
client.publish('messages', 'Current time is: ' + new Date())
client.on('message', function (topic, message) {
  console.log(message)
})

client.on('connect', function () {
  console.log('Connected')
})