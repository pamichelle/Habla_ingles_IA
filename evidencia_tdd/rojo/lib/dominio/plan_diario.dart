import 'nivel.dart';
import 'progreso.dart';
import 'reglas.dart';

// RONDA 3 - versión ROJO: el reparto del plan diario TODAVÍA no está implementado.
// Las pruebas del grupo 'plan diario' en test/repaso_progreso_test.dart deben fallar.

class BloquePlan {
  final Habilidad habilidad;
  final int minutos;
  final bool esRefuerzo;
  const BloquePlan(this.habilidad, this.minutos, {this.esRefuerzo = false});
}

List<BloquePlan> generarPlan(Progreso progreso, {int minutosTotales = Reglas.minutosPorSesion}) {
  // TODO (Ronda 3): repartir minutosTotales entre las 5 habilidades (método del mayor resto).
  return [BloquePlan(Habilidad.values.first, minutosTotales)];
}
