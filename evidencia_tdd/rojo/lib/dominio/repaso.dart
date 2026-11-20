// RONDA 3 - versión ROJO: repetición espaciada (SM-2) TODAVÍA sin implementar.
// Las pruebas del grupo 'SM-2' en test/repaso_progreso_test.dart deben fallar.

class TarjetaRepaso {
  final String id;
  final String frase;
  final String traduccion;
  final double facilidad;
  final int intervaloDias;
  final int repeticiones;
  final DateTime proxima;

  const TarjetaRepaso({
    required this.id,
    required this.frase,
    required this.traduccion,
    required this.proxima,
    this.facilidad = 2.5,
    this.intervaloDias = 0,
    this.repeticiones = 0,
  });

  bool estaVencida(DateTime hoy) => false; // TODO (Ronda 3)

  TarjetaRepaso calificar(int calidad, DateTime hoy) {
    throw UnimplementedError('TODO (Ronda 3): algoritmo SM-2 aún no implementado.');
  }

  Map<String, Object?> aJson() => {'id': id}; // TODO (Ronda 3)

  static TarjetaRepaso? desdeJson(Object? o) => null; // TODO (Ronda 3)
}

int calidadDesdePuntaje(double p) => 0; // TODO (Ronda 3)

class MazoRepaso {
  MazoRepaso([Iterable<TarjetaRepaso> iniciales = const []]);

  List<TarjetaRepaso> get todas => const []; // TODO (Ronda 3)
  List<TarjetaRepaso> pendientes(DateTime hoy) => const []; // TODO (Ronda 3)
  void calificar(String id, int calidad, DateTime hoy) {} // TODO (Ronda 3)
  void registrar({required String id, required String frase, required String traduccion,
      required double puntaje, required DateTime hoy}) {} // TODO (Ronda 3)
}
