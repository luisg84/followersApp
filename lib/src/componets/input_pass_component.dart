import 'package:flutter/material.dart';

class inputPassComponent extends StatelessWidget {
  String labelName;
  String hintTextData;
  double labelSize;
  String textCounter;
  inputPassComponent(
      this.hintTextData, this.labelName, this.labelSize, this.textCounter);

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      counter: Text(textCounter),
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
      obscureText: true,
      decoration: inputDecoration,
    );
  }
}
