import 'package:flutter/foundation.dart';

import '../../dominio/repaso.dart';
import '../../dominio/voz.dart';
import 'aprendizaje_vm.dart';

// RONDA 9 - versión ROJO: todavía no muestra ni califica tarjetas.
class RepasoViewModel extends ChangeNotifier {
  final AprendizajeViewModel _aprendizaje;
  final Voz _voz;
  RepasoViewModel(this._aprendizaje, this._voz);

  bool respuestaVisible = false;

  bool get terminado => true; // TODO (Ronda 9)
  int get restantes => 0; // TODO (Ronda 9)
  TarjetaRepaso? get actual => null; // TODO (Ronda 9)

  Future<void> mostrarRespuesta() async {} // TODO (Ronda 9)
  Future<void> calificar(int calidad) async {} // TODO (Ronda 9)
}
