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
  static final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
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
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: alto * 0.55, //
              width: ancho * 0.9, //
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              decoration: const BoxDecoration(
                  color: Color(0xFF57C2FE),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    Text(' '),
                    
                    Image(image: AssetImage('assets/visa_logo.jpg')),
                  
                   SizedBox(
                    height: 15,
                   ),

                    CustomInputField(
                      labelText: 'Correo',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                   
                   SizedBox(
                    height: 10,
                   ),

                    CustomInputField(
                      labelText: 'Numero de cuenta',
                      isPassword: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    
                    SizedBox(
                    height: 10,
                   ),
                   
                   CustomInputField(
                      labelText: 'Fecha',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                   
                    SizedBox(
                    height: 10,
                   ),
                   
                   CustomInputField(
                      labelText: 'Numero',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),


                    SizedBox(
                    height: 10,
                     ),

                    ElevatedButton(
                        onPressed: () {
                        Navigator.popAndPushNamed(context, 'home');
                      },
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(230, 43),
                        minimumSize: const Size(230, 43),
                        backgroundColor: const Color(0xFF2196F3),
                         shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                      child: const Text('PAGAR S/20.00',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          maxLines: 1,
                          textAlign: TextAlign.center),),

                    // Divider(),
                  
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}



