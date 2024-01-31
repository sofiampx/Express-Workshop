// Load HTTP module
const http = require("http");

const hostname = "127.0.0.1";
const port = 8000;

// Create HTTP server, fill the comments with your code
const server = http.createServer(function (req, res) {
	res.statusCode = 200;
	res.setHeader("Content-Type", "text/plain");
	res.end("Hello World");
});

// Prints a log once the server starts listening
server.listen(port, hostname, function () {
  console.log(`Server running at http://${hostname}:${port}/`);
});
