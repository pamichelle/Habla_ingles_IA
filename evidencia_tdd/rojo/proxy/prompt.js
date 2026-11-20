'use strict';
// RONDA 6 - versión ROJO (TODO: aún sin implementar, las pruebas deben fallar).

const NIVELES = ['a1', 'a2', 'b1', 'b2', 'c1'];
const MODOS = ['conversar', 'corregir'];
const MAX_MENSAJES = 20;
const MAX_CARACTERES = 500;

function construirPrompt({ nivel, modo }) {
  throw new Error('TODO: construirPrompt no implementado (Ronda 6)');
}

function validarSolicitud(body) {
  return null; // TODO: por ahora "pasa" cualquier cosa (incorrecto a propósito)
}

function extraerRespuesta(texto) {
  throw new Error('TODO: extraerRespuesta no implementado (Ronda 6)');
}

module.exports = { NIVELES, MODOS, MAX_MENSAJES, MAX_CARACTERES, construirPrompt, validarSolicitud, extraerRespuesta };
