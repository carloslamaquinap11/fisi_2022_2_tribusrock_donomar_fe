// To parse this JSON data, do
//
//     final Cita = CitaFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Cita> CitaFromJson(String str) =>
    List<Cita>.from(json.decode(str).map((x) => Cita.fromJson(x)));

String CitaToJson(List<Cita> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cita {
  Cita({
    required this.citaId,
    required this.dentistaId,
    required this.pacienteId,
    required this.fechaInicio,
    required this.fechaFin,
    required this.descripcionCita,
    required this.localizacion,
    required this.estado,
  });

  final int citaId;
  final int dentistaId;
  final int pacienteId;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final String descripcionCita;
  final String localizacion;
  final int estado;

  factory Cita.fromJson(Map<String, dynamic> json) => Cita(
        citaId: json["citaId"],
        dentistaId: json["dentistaId"],
        pacienteId: json["pacienteId"],
        fechaInicio: DateTime.parse(json["fechaInicio"]),
        fechaFin: DateTime.parse(json["fechaFin"]),
        descripcionCita: json["descripcionCita"],
        localizacion: json["localizacion"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "citaId": citaId,
        "dentistaId": dentistaId,
        "pacienteId": pacienteId,
        "fechaInicio": fechaInicio.toIso8601String(),
        "fechaFin": fechaFin.toIso8601String(),
        "descripcionCita": descripcionCita,
        "localizacion": localizacion,
        "estado": estado,
      };
}
