const express = require("express");

const app = express();

app.get("/", (req, res) => {
	res.send(`Pod IP is ${process.env.POD_IP}`);
});

app.get('/data', (req, res) => {
	res.json({
		ip: process.env.POD_IP
	});
});

app.listen(3000, () => {
	console.log("Server started on port 3000");
});
