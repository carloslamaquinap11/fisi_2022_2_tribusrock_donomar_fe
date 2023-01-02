import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                children: const [
                  CustomMedicalButton(
                      route: 'registro',
                      text: 'Solicitar una nueva cita',
                      width: 0.20,
                      iconData: Icons.favorite_border),
                  CustomMedicalButton(
                      route: 'registro',
                      text: 'Historial médico',
                      width: 0.20,
                      iconData: Icons.medication_outlined),
                  CustomMedicalButton(
                      route: 'registro',
                      text: 'Documento de facturas',
                      width: 0.20,
                      iconData: Icons.article_outlined),
                ],
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(120, 140),
                    minimumSize: const Size(120, 90),
                    backgroundColor: const Color(0xFF57C2FE),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  child: const Text('Citas por venir',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      maxLines: 2,
                      textAlign: TextAlign.center),
                ),
                Column(
                  // padding: const EdgeInsets.all(8),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomNextAppointmentButton(
                        name: 'REVISIÓN MÉDICA DE IMPLANTE MAMARIO',
                        time: '09:00 a.m.'),
                    CustomNextAppointmentButton(
                        name: 'REVISIÓN MÉDICA DE IMPLANTE MAMARIO',
                        time: '09:00 a.m.'),
                    CustomNextAppointmentButton(
                        name: 'REVISIÓN MÉDICA DE IMPLANTE MAMARIO',
                        time: '09:00 a.m.'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    // CustomNextAppointmentButton(name: 'REVISIÓN MÉDICA DE IMPLANTE MAMARIO',time: '09:00 a.m.'),
                    // CustomNextAppointmentButton(name: 'REVISIÓN MÉDICA DE IMPLANTE MAMARIO',time: '09:00 a.m.'),
                  ],
                )
              ],
            )),
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
                      'Hiro Oré Alejos',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '4551 5555 6666 7777',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
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
