// server2.js
const http = require('http');

const PORT = 3001;

http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain; charset=utf-8'});
  res.end('Hello from server2 on port 3001');
}).listen(PORT, () => {
  console.log(`server2 is listening on port ${PORT}`);
});
