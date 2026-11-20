import 'nivel.dart';

// RONDA 7 - versión ROJO: el parseo de la respuesta de la IA (entrada NO
// confiable) TODAVÍA no está implementado.

class Correccion {
  final String original;
  final String corregido;
  final String explicacion;
  const Correccion(this.original, this.corregido, this.explicacion);
}

class RespuestaTutor {
  final String respuesta;
  final List<Correccion> correcciones;
  final String? siguientePregunta;
  final String? textoCorregido;

  const RespuestaTutor(this.respuesta,
      {this.correcciones = const [], this.siguientePregunta, this.textoCorregido});

  static RespuestaTutor desdeTexto(String texto) {
    throw UnimplementedError('TODO (Ronda 7): desdeTexto aún no implementado.');
  }

  static RespuestaTutor desdeMapa(Object? o) {
    throw UnimplementedError('TODO (Ronda 7): desdeMapa aún no implementado.');
  }
}

class Mensaje {
  final bool delEstudiante;
  final String texto;
  const Mensaje(this.delEstudiante, this.texto);
}

abstract class TutorIA {
  Future<RespuestaTutor> conversar({required NivelCefr nivel, required List<Mensaje> historial});
  Future<RespuestaTutor> corregir({required NivelCefr nivel, required String texto});
}
