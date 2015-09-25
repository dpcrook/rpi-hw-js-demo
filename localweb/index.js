
var express = require('express');
var compression = require('compression');

var app = express();



var oneDay = 86400000;
var listenPort = process.env.PORT || 3000;

// compress content
app.use(compression());


app.use(express.static(__dirname + '/assets',  { maxAge: oneDay }));

console.log("Listening on port " + listenPort);
app.listen(listenPort);
