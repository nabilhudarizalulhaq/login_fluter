import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'secondScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Container(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: LoginScreen(),
      ),
    );
  }
}
