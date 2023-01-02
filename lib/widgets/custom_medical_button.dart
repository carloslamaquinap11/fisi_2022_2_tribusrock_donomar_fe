import 'package:fisi_2022_2_tribusrock_donomar_fe/main.dart';
import 'package:flutter/material.dart';

class CustomMedicalButton extends StatelessWidget {
  final String? text;
  final String? route;
  final double? width;
  final IconData? iconData;

  const CustomMedicalButton(
      {Key? key, this.text, this.route, this.width, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alto = MediaQuery.of(context).size.height;
    final ancho = MediaQuery.of(context).size.width;

    return Container(
      // width: MediaQuery.of(context).size.width*width!,
      width: ancho * 0.30,
      height: alto * 0.12,
      // decoration: const BoxDecoration(
      //   borderRadius: BorderRadius.all(Radius.circular(30))
      // ),
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              print('botón presionado: ' + text!);
              print('ruta: ' + route!);
              // Navigator.pushNamed(context, route!);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 120),
              elevation: 5,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(text!,
                    style: const TextStyle(
                        color: Color(0xFF57C2FE),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                    textAlign: TextAlign.center),
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  iconData!,
                  size: 30,
                  color: const Color(0xFF57C2FE),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }
}
