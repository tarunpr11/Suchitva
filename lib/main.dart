import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(Nirmal());
}

class Nirmal extends StatelessWidget {
  Nirmal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      home: LoginPage(),
    );
  }
}
