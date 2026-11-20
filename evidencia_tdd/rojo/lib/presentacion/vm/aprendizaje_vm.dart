import 'package:flutter/foundation.dart';

import '../../dominio/almacen.dart';
import '../../dominio/frase.dart';
import '../../dominio/nivel.dart';
import '../../dominio/plan_diario.dart';
import '../../dominio/progreso.dart';
import '../../dominio/repaso.dart';

// RONDA 9 - versión ROJO: el "cerebro" del aprendizaje TODAVÍA no guarda nada.
class AprendizajeViewModel extends ChangeNotifier {
  final AlmacenAvance _almacen;
  final DateTime Function() _reloj;

  Progreso progreso = Progreso();
  MazoRepaso mazo = MazoRepaso();

  AprendizajeViewModel(this._almacen, {DateTime Function()? reloj}) : _reloj = reloj ?? DateTime.now;

  DateTime get hoy => _reloj();
  NivelCefr get nivel => progreso.nivel;
  List<BloquePlan> get plan => generarPlan(progreso);
  List<TarjetaRepaso> get pendientes => mazo.pendientes(hoy);
  bool get puedeSubirDeNivel => progreso.puedeSubirDeNivel;

  Future<void> cargar() async {} // TODO (Ronda 9)

  Future<void> registrarIntento(Habilidad h, double puntaje, {Frase? frase}) async {
    // TODO (Ronda 9): aún no registra el intento ni guarda.
  }

  Future<void> calificarTarjeta(String id, int calidad) async {} // TODO (Ronda 9)

  Future<void> subirDeNivel() async {} // TODO (Ronda 9)
}
