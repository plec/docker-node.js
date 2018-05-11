var express = require('express');

var os = require('os')

var app = express();

// Constants
const PORT = 8888;
const HOST = '0.0.0.0';

app.get('/', function(req, res) {
    res.setHeader('Content-Type', 'text/plain');
    res.status(200);
    res.end('Hello Wolrd ! From host ' + os.hostname() );
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
