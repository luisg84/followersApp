import 'package:flutter/material.dart';
import 'package:followers_app/src/pages/home.dart';
import 'package:followers_app/src/pages/login_page.dart';

import 'src/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FollowersApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
