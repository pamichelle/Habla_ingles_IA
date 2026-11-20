import '../dominio/nivel.dart';
import '../dominio/tutor.dart';

// RONDA 7 - versión ROJO: el tutor de reglas TODAVÍA no detecta ni corrige nada.
class TutorSimulado implements TutorIA {
  @override
  Future<RespuestaTutor> conversar({required NivelCefr nivel, required List<Mensaje> historial}) async {
    throw UnimplementedError('TODO (Ronda 7): TutorSimulado.conversar aún no implementado.');
  }

  @override
  Future<RespuestaTutor> corregir({required NivelCefr nivel, required String texto}) async {
    throw UnimplementedError('TODO (Ronda 7): TutorSimulado.corregir aún no implementado.');
  }
}
