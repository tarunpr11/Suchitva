import 'package:flutter/material.dart';

class BioData extends StatelessWidget {
  const BioData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Biodata.png'),
          ),
        ),
      ),
    );
  }
}
