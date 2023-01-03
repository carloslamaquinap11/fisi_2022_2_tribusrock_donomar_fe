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
    this.citaId,
    required this.dentistaId,
    required this.pacienteId,
    required this.fechaInicio,
    this.fechaFin,
    required this.descripcionCita,
    required this.localizacion,
    this.estado,
  });

  final int? citaId;
  final int dentistaId;
  final int pacienteId;
  final String fechaInicio;
  final String? fechaFin;
  final String descripcionCita;
  final String localizacion;
  final int? estado;

  factory Cita.fromJson(Map<String, dynamic> json) => Cita(
        citaId: json["citaId"],
        dentistaId: json["dentistaId"],
        pacienteId: json["pacienteId"],
        fechaInicio: json["fechaInicio"],
        fechaFin: json["fechaFin"],
        descripcionCita: json["descripcionCita"],
        localizacion: json["localizacion"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "citaId": citaId,
        "dentistaId": dentistaId,
        "pacienteId": pacienteId,
        "fechaInicio": fechaInicio,
        "fechaFin": fechaFin,
        "descripcionCita": descripcionCita,
        "localizacion": localizacion,
        "estado": estado,
      };
}
