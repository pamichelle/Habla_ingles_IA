import 'package:http/http.dart' as http;

import '../dominio/nivel.dart';
import '../dominio/tutor.dart';

// RONDA 7 - versión ROJO: el cliente HTTP TODAVÍA no valida HTTPS ni envía nada.
class TutorHttp implements TutorIA {
  final Uri endpoint;
  final http.Client _cliente;

  // TODO (Ronda 7): debería lanzar ArgumentError si no es HTTPS (salvo localhost autorizado).
  TutorHttp(this.endpoint, this._cliente,
      {Duration timeout = const Duration(seconds: 30), String? tokenApp, bool permitirHttpLocal = false});

  @override
  Future<RespuestaTutor> conversar({required NivelCefr nivel, required List<Mensaje> historial}) async {
    throw UnimplementedError('TODO (Ronda 7): TutorHttp.conversar aún no implementado.');
  }

  @override
  Future<RespuestaTutor> corregir({required NivelCefr nivel, required String texto}) async {
    throw UnimplementedError('TODO (Ronda 7): TutorHttp.corregir aún no implementado.');
  }
}
