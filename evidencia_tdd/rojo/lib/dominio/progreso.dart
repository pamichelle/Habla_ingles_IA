import 'nivel.dart';

// RONDA 3 - versión ROJO: progreso (EMA, racha, nivel) TODAVÍA sin implementar.
// Las pruebas del grupo 'Progreso' en test/repaso_progreso_test.dart deben fallar.

class DominioHabilidad {
  final double dominio;
  final int intentos;
  const DominioHabilidad(this.dominio, this.intentos);
}

class Progreso {
  NivelCefr nivel;
  int racha;
  DateTime? ultimoDia;

  Progreso({
    Map<Habilidad, DominioHabilidad>? habilidades,
    this.nivel = NivelCefr.a1,
    this.racha = 0,
    this.ultimoDia,
  });

  DominioHabilidad? de(Habilidad h) => null; // TODO (Ronda 3)
  double dominioDe(Habilidad h) => 0; // TODO (Ronda 3)
  void registrar(Habilidad h, double puntaje, DateTime hoy) {} // TODO (Ronda 3)
  Habilidad get masDebil => Habilidad.values.first; // TODO (Ronda 3)
  bool get puedeSubirDeNivel => false; // TODO (Ronda 3)
  bool subirDeNivel() => false; // TODO (Ronda 3)

  Map<String, Object?> aJson() => {}; // TODO (Ronda 3)
  static Progreso desdeJson(Object? o) => Progreso(); // TODO (Ronda 3)
}
