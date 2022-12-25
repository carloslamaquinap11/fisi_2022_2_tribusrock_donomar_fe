import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fisi_2022_2_tribusrock_donomar_fe/widgets/custom_input_field.dart';

class RegistroScreen extends StatelessWidget{
  
  const RegistroScreen({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 71, 255, 0.78),
            Color.fromRGBO(55, 255, 207, 1)
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.55,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(210, 234, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Registro',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Divider(),
                        Text('Ingrese sus datos personales',style: TextStyle(color: Colors.black),),
                        Divider(),
                        // CustomInputField(labelText: 'Documento de identidad',icon: Icon(Icons.credit_card_outlined,color: Colors.black,)),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                            labelText: 'Documento de identidad',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92)
                            ),
                            icon: Icon(Icons.credit_card_outlined,color: Colors.black,)
                          ),
                        ),
                        Divider(),
                        // CustomInputField(labelText: 'Correo',icon: Icon(Icons.email_sharp,color: Colors.black,)),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                            labelText: 'Correo',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92)
                            ),
                            icon: Icon(Icons.email_sharp,color: Colors.black,)
                          ),
                        ),
                        Divider(),
                        // CustomInputField(labelText: 'Celular',icon: Icon(Icons.phone_android_sharp,color: Colors.black,)),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                            labelText: 'Correo',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92)
                            ),
                            icon: Icon(Icons.phone_android_sharp,color: Colors.black,)
                          ),
                        ),
                        Divider(),
                        // CustomInputField(labelText: 'Contraseña',isPassword: true,icon: Icon(Icons.lock_clock_sharp,color: Colors.black,)),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                            labelText: 'Correo',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92)
                            ),
                            icon: Icon(Icons.lock_clock_sharp,color: Colors.black,)
                          ),
                        ),
                        Divider(),
                        // CustomInputField(labelText: 'Confirmar contraseña',isPassword: true,icon: Icon(Icons.lock_clock_sharp,color: Colors.black,)),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                            labelText: 'Correo',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92)
                            ),
                            icon: Icon(Icons.lock_clock_sharp,color: Colors.black,)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false, 
                        onChanged: (value){
                          print(value);
                        }
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Acepto recibir ofertas y promociones informativas.')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false, 
                        onChanged: (value){
                          print(value);
                        }
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('He leído y acepto los Términos y Condiciones y las Políticas de uso de datos personales.')
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}