import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/home_screen.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistroCitaScreen extends StatelessWidget {
  const RegistroCitaScreen({Key? key}) : super(key: key);
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
          title: const Text('Nueva Cita'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        body: Column(children: [
          const SizedBox(
            height: 10,
          ),
          CustomInputField(
            labelText: 'Motivo de la Cita: ',
            keyboardType: TextInputType.emailAddress,
            formProperty: 'reason',
            formValues: formValues,
          ),
          const SizedBox(
            height: 10,
          ),
           CustomInputField(
            labelText: 'Descripcion Consulta: ',
            keyboardType: TextInputType.emailAddress,
            formProperty: 'description',
            formValues: formValues,
          ),
          const SizedBox(
            height: 10,
          ),
           CustomInputField(
            labelText: 'Localización: ',
            keyboardType: TextInputType.emailAddress,
            formProperty: 'location',
            formValues: formValues,
          ),
          SizedBox(height: 400,),
          ElevatedButton(
                  onPressed: () {
                    


                  },
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(268, 52),
                    minimumSize: const Size(268, 52),
                    backgroundColor: const Color(0xFFFF912C),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  child: const Text('Agendar Cita',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      textAlign: TextAlign.center),
                ), 
        ],),
        
      ),
    );
  }
  
}
