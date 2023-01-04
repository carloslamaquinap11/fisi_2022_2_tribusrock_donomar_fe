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

class HomeScreen extends StatelessWidget {
  List<Cita>? citas;

  HomeScreen({Key? key, List<Cita>? misCitas}) : super(key: key) {
    citas = misCitas ?? [];
  }

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
          title: const Text('Home Screen'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomMedicalButton(
                      text: 'Solicitar una nueva cita',
                      width: 0.20,
                      iconData: Icons.favorite_border,
                      route: 'registro_cita',
                      citas: citas),
                  CustomMedicalButton(
                      route: 'citas',
                      citas: citas,
                      text: '   Ver citas registradas   ',
                      width: 0.20,
                      iconData: Icons.medication_outlined),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text("Hola"),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xFF57C2FE),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Clínica Dental App',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10/08/2000',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreenArguments {
  String? description;
  String? location;
  HomeScreenArguments({this.description, this.location});
}
