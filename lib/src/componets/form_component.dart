import 'package:flutter/material.dart';
import 'package:followers_app/src/componets/bluebutton_component.dart';
import 'package:followers_app/src/componets/input_component.dart';
import 'package:followers_app/src/componets/input_mail_component.dart';
import 'package:followers_app/src/componets/input_pass_component.dart';

class FormComponent extends StatefulWidget {
  FormComponent({Key key}) : super(key: key);

  @override
  _FormComponentState createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 100,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 100, left: 10, bottom: 10),
            child: inputComponent('Ingrese su nombre', 'Nombre(s)'),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, right: 20, left: 10, bottom: 10),
                  child:
                      inputComponent('Ingrese su apellido', 'Apellido paterno'),
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, right: 20, left: 10, bottom: 10),
                  child:
                      inputComponent('Ingrese su apellido', 'Apellido materno'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
            child: inputMailComponent('Ingrese su mail', 'Mail', 20.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
            child: inputComponent('Ingrese su numero', 'Telefono'),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
            child: inputPassComponent(
                'Ingrese su contraseña', 'Contraseña', 20.0, ' '),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, right: 20, left: 10, bottom: 10),
                  child: BlueButtonComponent('Registrarse', 30.0, 18),
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 30, right: 20, left: 50, bottom: 10),
                  child: Text(
                    'Continuar',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: Color(0xFF516cf0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ), // Construiremos esto en los siguientes pasos!
    );
  }
}
