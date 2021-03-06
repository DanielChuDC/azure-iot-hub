'use strict';

var clientFromConnectionString = require('azure-iot-device-mqtt').clientFromConnectionString;
var Message = require('azure-iot-device').Message;

function azcall()
{
	var connectionString = 'HostName=sampleiotappqfpccuzd.azure-devices.net;DeviceId=KING;SharedAccessKey=umt7jv9CMK8TnArpp3JiTjFH+xlcpQqXNlqpBglTGWU='; 

	var client = clientFromConnectionString(connectionString);
	function printResultFor(op) 
	{
		return function printResult(err, res) 
		{
			if (err) console.log(op + ' error: ' + err.toString());
			if (res) console.log(op + ' status: ' + res.constructor.name);
		};
	}

	var connectCallback = function (err) 
	{
		if (err) 
		{
			console.log('Could not connect: ' + err);
		} 
		else 
		{
			console.log('Client connected');
			pubData();
			function pubData()
			{  
				var rand= Math.floor((Math.random() * 100) + 1);
				var data = JSON.stringify({ "device_id": "Simulated Device", "Data":rand});
				var message = new Message(data);
				console.log("Sending message: " + message.getData());
				client.sendEvent(message, printResultFor('send'));
			}
		}
	};
	client.open(connectCallback);
}
setInterval(azcall, 1500);