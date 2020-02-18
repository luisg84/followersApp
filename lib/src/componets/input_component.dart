import 'package:flutter/material.dart';

class inputComponent extends StatelessWidget {
  String labelName;
  String hintTextData;

  inputComponent(this.hintTextData, this.labelName);

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      border: UnderlineInputBorder(
          //borderSide: BorderSide(color: Colors.red),
          ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: Color(0xFF516cf0),
        ),
      ),
      hintText: hintTextData,
      labelText: labelName,
      labelStyle: TextStyle(fontSize: 20.0),
    );
    return TextField(
      decoration: inputDecoration,
    );
  }
}
