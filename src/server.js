const http = require('http');
const port = 8080; // GKE siempre expone el puerto que escucha el contenedor

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('¡Hola Mundo desde GKE con Node.js!\n');
});

server.listen(port, () => {
  console.log(`El servidor está corriendo en http://localhost:${port}/`);
});