import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/registro_cita_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fisi_2022_2_tribusrock_donomar_fe/models/cita.dart';

class VerCitasScreen extends StatelessWidget {
  final List<Cita> citas;

  const VerCitasScreen({Key? key, required this.citas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alto = MediaQuery.of(context).size.height;
    final ancho = MediaQuery.of(context).size.width;

    print('CITAS EN HOMESCREEN');
    print(citas!.length);

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
            title: const Text('Citas Registradas'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                citas!.length != 0
                    ? Expanded(
                        child: Container(
                            // height: 80,

                            width: 350,
                            child: Center(
                              child: ListView(
                                children: citas!.map((e) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        CustomNextAppointmentButton(
                                            name: e.descripcionCita,
                                            time: e.fechaInicio,
                                            locacion: e.localizacion),
                                        SizedBox(
                                          height: 3,
                                        )
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            )))
                    : Text('No hay citas'),
              ])),
    );
  }
}

class HomeScreenArguments {
  String? description;
  String? location;
  HomeScreenArguments({this.description, this.location});
}
