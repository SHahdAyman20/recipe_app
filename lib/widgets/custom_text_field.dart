import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextInputType type;
  TextEditingController controller;

  CustomTextField(
      {
        super.key,
      required this.type,
      required this.controller,
     });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      decoration:const InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFF1616),
          ),
        ),
        border: OutlineInputBorder(),
        //focusColor: Color(0xffFF1616),

      ),
    );
  }
}
