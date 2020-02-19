import 'package:flutter/material.dart';
import 'package:division/division.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                height: 5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    child: Container(
                  margin: EdgeInsets.only(left: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      //  border: Border.all(color: Colors.blueAccent),
                      image: DecorationImage(
                          image: AssetImage('assets/images/cog-solid.png'))),
                )),
                Align(
                    child: Container(
                  margin: EdgeInsets.only(right: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      //border: Border.all(color: Colors.blueAccent),
                      image: DecorationImage(
                          image: AssetImage('assets/images/sign-out.png'))),
                )),
              ],
            ),
            Container(
              height: 80.0,
              width: 250.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_clever.png'))),
            ),
            SizedBox(
              height: 100,
            ),
            Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 323.0,
                    height: 323.0,
                    decoration: new BoxDecoration(
                      color: Color(0xFFc0c0c1),
                      shape: BoxShape.circle,
                    ),
                    child: Division(
                      style: StyleClass()
                        ..width(281)
                        ..height(281)
                        ..backgroundColor(hex: 'FFFFFF')
                        ..borderRadius(all: 400.0)
                        ..elevation(30)
                        ..align('center')
                        ..alignChild('center'),
                      gesture: GestureClass()
                        ..onTap(() => print('Widget pressed')),
                      child: Text(
                        'Desconectado',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Color(0xFFadadad)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 29.0),
                child: Text(
                  'No tiene ningún usuario enlazado, pídale al usuario del cleverbeat que lo registre desde su aplicación en la sección de followers.',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      //fontWeight: FontWeight.w800,
                      fontSize: 17,
                      color: Color(0xFFadadad)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
