import 'package:flutter/foundation.dart';

import '../../dominio/nivel.dart';
import '../../dominio/tutor.dart';
import 'aprendizaje_vm.dart';

// RONDA 9 - versión ROJO: todavía no valida mínimo de palabras ni corrige.
class EscrituraViewModel extends ChangeNotifier {
  final TutorIA _tutor;
  final AprendizajeViewModel _aprendizaje;
  EscrituraViewModel(this._tutor, this._aprendizaje);

  RespuestaTutor? resultado;
  bool ocupado = false;
  String? error;

  String get tema => 'TODO (Ronda 9)';

  static double puntajeDe(int errores) => 0; // TODO (Ronda 9)

  Future<void> enviar(String texto) async {} // TODO (Ronda 9)
}
