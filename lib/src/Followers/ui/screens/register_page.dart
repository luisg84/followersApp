import 'package:flutter/material.dart';
import 'package:followers_app/src/Followers/ui/widgets/form_component.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _crearTitulos(),
        FormComponent(),
      ],
    );
  }

  Widget _crearForm() {}

  Widget _crearTitulos() {
    return Column(
      children: <Widget>[
        SafeArea(
          child: Container(
            height: 10,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 0, right: 250, left: 10, bottom: 10),
          height: 60.0,
          width: 136.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_clever.png'))),
        ),
        Container(
          margin: EdgeInsets.only(top: 0, right: 180, left: 0, bottom: 10),
          child: Text(
            'Registrarse',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 40,
              color: Color(0xFF0b0a0a),
            ),
          ),
        )
      ],
    );
  }
}
