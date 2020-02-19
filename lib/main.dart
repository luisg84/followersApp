import 'package:flutter/material.dart';
import 'package:followers_app/src/Followers/ui/screens/home.dart';
import 'package:followers_app/src/Followers/ui/screens/login_page.dart';

import 'src/Followers/ui/screens/register_page.dart';

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
