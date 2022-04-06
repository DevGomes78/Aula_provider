import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController? controller;
  String? labeltext;
  String? hintText;

  TextFieldWidget(
    this.controller,
    this.labeltext,
    this.hintText,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: controller,
    );
  }
}
