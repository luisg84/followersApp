import 'package:flutter/material.dart';
import 'package:followers_app/src/componets/bluebutton_component.dart';
import 'package:followers_app/src/componets/input_component.dart';
import 'package:followers_app/src/componets/input_mail_component.dart';
import 'package:followers_app/src/componets/input_pass_component.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 20,
            ),
          ),
          Container(
            height: 80.0,
            width: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo_clever.png'))),
          ),
          SingleChildScrollView(
            child: _loginForm(),
          ),
          // _loginForm(),
        ],
      ),
    ));
  }

  Widget _loginForm() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 0,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            child: inputMailComponent(
                'Ingrese nombre de usuario', 'Usuario', 25.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            child: inputPassComponent('Ingrese contraseña', 'Contraseña', 25.0,
                'Recuperar contraseña'),
          ),
          SizedBox(
            height: 60.0,
          ),
          Container(
            child: BlueButtonComponent('Iniciar sesión', 120.0, 20.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text('Registrarse'),
        ],
      ),
    );
  }
}
