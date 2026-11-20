import 'package:flutter/foundation.dart';

import '../../dominio/nivel.dart';
import '../../dominio/tutor.dart';
import '../../dominio/voz.dart';
import 'aprendizaje_vm.dart';

// RONDA 9 - versión ROJO: todavía no conversa, no corrige ni registra nada.
class ConversacionViewModel extends ChangeNotifier {
  static const int maxCaracteres = 500;

  final TutorIA _tutor;
  final Voz _voz;
  final AprendizajeViewModel _aprendizaje;
  ConversacionViewModel(this._tutor, this._voz, this._aprendizaje);

  final List<Mensaje> historial = [];
  List<Correccion> ultimasCorrecciones = [];
  bool ocupado = false;
  bool autoVoz = true;
  String? error;
  String? textoNoEnviado;

  void iniciar() {} // TODO (Ronda 9)
  void alternarAutoVoz() {} // TODO (Ronda 9)

  static double puntajeTurno(int correcciones) => 0; // TODO (Ronda 9)

  Future<void> enviar(String texto) async {} // TODO (Ronda 9)
  Future<void> dictar() async {} // TODO (Ronda 9)
}
