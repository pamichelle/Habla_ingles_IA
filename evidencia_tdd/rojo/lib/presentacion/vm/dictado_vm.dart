import 'package:flutter/foundation.dart';

import '../../dominio/comparador.dart';
import '../../dominio/frase.dart';
import '../../dominio/nivel.dart';
import '../../dominio/voz.dart';
import 'aprendizaje_vm.dart';

// RONDA 9 - versión ROJO: todavía no reproduce, no compara ni registra nada.
class DictadoViewModel extends ChangeNotifier {
  final Voz _voz;
  final AprendizajeViewModel _aprendizaje;
  DictadoViewModel(this._voz, this._aprendizaje);

  int indice = 0;
  int reproducciones = 0;
  ResultadoComparacion? resultado;
  bool ocupado = false;
  String? error;

  List<Frase> get frases => frasesDeNivel(_aprendizaje.nivel);
  Frase get actual => frases[indice % frases.length];

  Future<void> reproducir({bool lento = false}) async {} // TODO (Ronda 9)
  Future<void> enviar(String escrito) async {} // TODO (Ronda 9)
  void siguiente() {} // TODO (Ronda 9)
}
