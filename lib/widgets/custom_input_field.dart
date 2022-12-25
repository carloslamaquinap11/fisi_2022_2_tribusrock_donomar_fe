import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? labelText;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final Icon? icon;

  final String formProperty;
  final Map<String,String> formValues;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.keyboardType,
    this.isPassword,
    this.icon, 
    required this.formProperty, 
    required this.formValues
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        icon: icon,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1,color: Colors.transparent),
          borderRadius: BorderRadius.circular(15)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1,color: Colors.transparent),
          borderRadius: BorderRadius.circular(15)
        ),
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.8)
        )
      ),
      style: TextStyle(
        color: Colors.black
      ),
      onChanged: (value){
        formValues[formProperty] = value;
      },
    );
  }
}