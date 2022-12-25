import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  
  final String? text;
  final String? route;
  final double? width;

  const CustomTextButton({
    Key? key,
    this.text,
    this.route,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // style: ButtonStyle(
      //   elevation: MaterialStateProperty.all(0),
      //   fixedSize: MaterialStateProperty.all(Size(width!, 5)),
      //   backgroundColor: MaterialStateProperty.all(Colors.transparent)
      // ),
      onPressed: (){
        Navigator.pushNamed(context, route!);
      },
      child: Text(text!,style: TextStyle(color: Colors.blueAccent))
    );
  }
}

