import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/home_screen.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/cita.dart';

class RegistroCitaScreen extends StatelessWidget {
  // final String? reasonValue;

  // final String? descriptionValue;

  // final String? locationValue;

  // final formKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static final Map<String, String> formValues = {
    'fecha': 'newfecha',
    'description': 'newdescription',
    'location': 'newlocation',
    'doctor': 'newdoctor'
  };

  final List<Cita> citas;

  const RegistroCitaScreen({Key? key, required this.citas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alto = MediaQuery.of(context).size.height;
    final ancho = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(0, 71, 255, 0.78),
            Color.fromRGBO(55, 255, 207, 1)
          ])),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nueva Cita'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Fecha de cita (dd-mm-aa): ',
                  ),
                  onChanged: (value) {
                    formValues['fecha'] = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "LLene este campo";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Descripción de Consulta: ',
                  ),
                  onChanged: (value) {
                    formValues['description'] = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "LLene este campo";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Localización (Norte - Centro - Sur): ',
                  ),
                  onChanged: (value) {
                    formValues['location'] = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "LLene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Doctor: ',
                  ),
                  onChanged: (value) {
                    formValues['doctor'] = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "LLene este campo";
                    }
                  },
                ),
                SizedBox(
                  height: 300,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('ezz');

                    var auxCita = Cita(
                        dentistaId: 1,
                        pacienteId: 2,
                        fechaInicio: formValues['fecha'].toString(),
                        descripcionCita: formValues['description'].toString(),
                        localizacion: formValues['location'].toString());

                    citas.add(auxCita);
                    print('cita a agregar');
                    print(auxCita.fechaInicio);
                    print(auxCita.descripcionCita);
                    print(auxCita.localizacion);
                    print('citasssssssssssss');
                    print(citas.length);
                    // formKey = null;
                    // print(citas);
                    Navigator.popAndPushNamed(context, 'pago');
                    // Navigator.push(context,
                    //   MaterialPageRoute(builder: (context)=>HomeScreen(misCitas: citas,))
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(268, 52),
                    minimumSize: const Size(268, 52),
                    backgroundColor: const Color(0xFFFF912C),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  child: const Text('AGENDAR CITA',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
