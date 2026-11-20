import 'package:flutter/foundation.dart';

import '../../dominio/lectura.dart';
import '../../dominio/nivel.dart';
import 'aprendizaje_vm.dart';

// RONDA 9 - versión ROJO: todavía no registra respuestas ni puntúa.
class LecturaViewModel extends ChangeNotifier {
  final AprendizajeViewModel _aprendizaje;
  LecturaViewModel(this._aprendizaje);

  int indiceTexto = 0;
  final Map<int, int> respuestas = {};

  List<TextoLectura> get textos => lecturasDeNivel(_aprendizaje.nivel);
  TextoLectura get actual => textos[indiceTexto % textos.length];
  bool get terminado => false; // TODO (Ronda 9)
  int get correctas => 0; // TODO (Ronda 9)
  double get puntaje => 0; // TODO (Ronda 9)

  Future<void> responder(int pregunta, int opcion) async {} // TODO (Ronda 9)
  void siguienteTexto() {} // TODO (Ronda 9)
}
