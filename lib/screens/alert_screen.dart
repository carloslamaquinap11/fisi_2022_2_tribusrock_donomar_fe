import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('AlertScreen'),
      ),
    );
  }
}