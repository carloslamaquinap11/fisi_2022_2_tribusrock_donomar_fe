import 'package:fisi_2022_2_tribusrock_donomar_fe/router/app_routes.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/home_screen.dart';
 import 'package:fisi_2022_2_tribusrock_donomar_fe/screens/screens.dart';
// import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_medical_button.dart';
 import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_next_appointment_button.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistroCitaScreen extends StatefulWidget {

  @override
  State<RegistroCitaScreen> createState() => _RegistroCitaScreenState();
}

class _RegistroCitaScreenState extends State<RegistroCitaScreen> {
  late TextEditingController reasonTextController;
  late TextEditingController descriptionTextController;
  late TextEditingController locationTextController;

  // const RegistroCitaScreen({Key? key}) : super(key: key);
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
        body: Column(children:<Widget> [
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Motivo de la Cita', ), 
            controller: reasonTextController,
          ),

          TextField(
            decoration: InputDecoration(labelText: 'Descripción de Consulta', ), 
            controller: descriptionTextController,
          ),

          TextField(
            decoration: InputDecoration(labelText: 'Localización', ), 
            controller: locationTextController,
          ),


          // CustomInputField(
          //   labelText: 'Motivo de la Cita ',
          //   keyboardType: TextInputType.text,
          //   formProperty: 'reason',
          //   formValues: formValues,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          //  CustomInputField(
          //   labelText: 'Descripcion Consulta ',
          //   keyboardType: TextInputType.text,
          //   formProperty: 'description',
          //   formValues: formValues,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          //  CustomInputField(
          //   labelText: 'Localización ',
          //   keyboardType: TextInputType.text,
          //   formProperty: 'location',
          //   formValues: formValues,
          // ),
          SizedBox(height: 400,),
          ElevatedButton(
                  onPressed: () {
                     
                     print('ezz');
                     Navigator.pushNamed(context, 'home');
                     
                   
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
        ],),
        
      ),
    );

    void _showHomeScreen(BuildContext context){
      Navigator.of(context).pushNamed("/second",
      arguments: HomeScreen());
    }
  }
  @override
  void initState() {
     

    super.initState();
     reasonTextController = TextEditingController();
     descriptionTextController = TextEditingController();
     locationTextController = TextEditingController();
    
  }

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    reasonTextController.dispose();
    descriptionTextController.dispose();
    locationTextController.dispose();
    

  }
}





