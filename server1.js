const http = require('http');

const PORT = 3000;

http.createServer((req, res) => {
  const hostFromRequest = req.headers.host;

  res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
  res.end(`Hello! Вы обратились к: ${hostFromRequest}`);
}).listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});
