import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/home_screen.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pago extends StatelessWidget {
  const Pago({Key? key}) : super(key: key);
  static final Map<String, String> formValues = {
    'email': 'micorreo@gmail.com',
    'password': '123123123'
  };
  
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
          title: const Text('Pago de Cita'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        body: Column(children: [
          const SizedBox(
            height: 10,
          ),
          
          SizedBox(height: 400,),
          ElevatedButton(
                  onPressed: () {
                     

                  },
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(230, 43),
                    minimumSize: const Size(230, 43),
                    backgroundColor: const Color(0xFF2196F3),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  child: const Text('Pagar S/20.00',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      textAlign: TextAlign.center),
                ), 
        ],),
        
      ),
    );
    throw UnimplementedError();
  }
  }
