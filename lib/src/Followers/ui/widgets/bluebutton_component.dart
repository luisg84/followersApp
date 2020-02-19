import 'package:flutter/material.dart';

class BlueButtonComponent extends StatelessWidget {
  String textButton;
  double horizontalPadding;
  double verticalPadding;

  BlueButtonComponent(
      this.textButton, this.horizontalPadding, this.verticalPadding);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Text(textButton),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      elevation: 0.0,
      color: Color(0xFF516cf0),
      textColor: Colors.white,
      onPressed: () {
        //Navigator.push(context, route)
      },
    );
  }
}
