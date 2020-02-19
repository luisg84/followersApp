import 'package:flutter/material.dart';

class inputMailComponent extends StatelessWidget {
  String labelName;
  String hintTextData;
  double labelSize;

  inputMailComponent(this.hintTextData, this.labelName, this.labelSize);

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
      labelStyle: TextStyle(fontSize: labelSize),
    );
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: inputDecoration,
    );
  }
}
