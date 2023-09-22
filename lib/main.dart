import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(const Nirmal());
}

class Nirmal extends StatelessWidget {
  const Nirmal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: LoginPage(),
    );
  }
}
