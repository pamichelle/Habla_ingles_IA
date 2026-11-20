'use strict';
const http = require('node:http');

// RONDA 6 - versión ROJO (TODO: aún sin implementar, las pruebas deben fallar).
function crearServidor(opts = {}) {
  return http.createServer((req, res) => {
    res.writeHead(404, { 'content-type': 'application/json' });
    res.end(JSON.stringify({ error: 'TODO: servidor no implementado (Ronda 6)' }));
  });
}

module.exports = { crearServidor };
