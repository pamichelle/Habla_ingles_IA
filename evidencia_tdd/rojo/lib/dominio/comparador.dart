import 'reglas.dart';

// RONDA 2 - versión ROJO: las clases existen pero la lógica todavía no se
// implementa (TODO). Las pruebas de test/comparador_test.dart deben fallar.

enum EstadoPalabra { correcta, parecida, sustituida, omitida, sobrante }

class ResultadoPalabra {
  final String? esperada;
  final String? dicha;
  final EstadoPalabra estado;
  const ResultadoPalabra(this.esperada, this.dicha, this.estado);
}

class ResultadoComparacion {
  final List<ResultadoPalabra> palabras;
  final int totalEsperadas;
  const ResultadoComparacion(this.palabras, this.totalEsperadas);

  // TODO (Ronda 2): calcular el puntaje real combinando correctas/parecidas/sobrantes.
  double get puntaje => 0;

  // TODO (Ronda 2): usar Reglas.umbralAprobado.
  bool get aprobado => false;

  // TODO (Ronda 2): devolver las palabras que conviene repasar.
  List<String> get porPracticar => const [];
}

List<String> normalizar(String texto) {
  throw UnimplementedError('TODO (Ronda 2): normalizar aún no implementado.');
}

int distanciaLevenshtein(String a, String b) {
  throw UnimplementedError('TODO (Ronda 2): distanciaLevenshtein aún no implementado.');
}

double similitud(String a, String b) {
  throw UnimplementedError('TODO (Ronda 2): similitud aún no implementado.');
}

ResultadoComparacion comparar(String esperado, String dicho) {
  throw UnimplementedError('TODO (Ronda 2): comparar aún no implementado.');
}
