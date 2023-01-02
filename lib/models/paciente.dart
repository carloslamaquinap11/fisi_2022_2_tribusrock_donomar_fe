// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.pacienteId,
    required this.dni,
    required this.nombre,
    required this.apePaterno,
    required this.apeMaterno,
    required this.fechaNac,
    required this.celular,
    required this.email,
    required this.contrasena,
  });

  final int pacienteId;
  final String dni;
  final String nombre;
  final String apePaterno;
  final String apeMaterno;
  final DateTime fechaNac;
  final String celular;
  final String email;
  final String contrasena;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        pacienteId: json["pacienteId"],
        dni: json["dni"],
        nombre: json["nombre"],
        apePaterno: json["apePaterno"],
        apeMaterno: json["apeMaterno"],
        fechaNac: DateTime.parse(json["fechaNac"]),
        celular: json["celular"],
        email: json["email"],
        contrasena: json["contrasena"],
      );

  Map<String, dynamic> toJson() => {
        "pacienteId": pacienteId,
        "dni": dni,
        "nombre": nombre,
        "apePaterno": apePaterno,
        "apeMaterno": apeMaterno,
        "fechaNac": fechaNac.toIso8601String(),
        "celular": celular,
        "email": email,
        "contrasena": contrasena,
      };
}
