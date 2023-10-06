import 'package:flutter/material.dart';

class ComplainList extends StatelessWidget {
  const ComplainList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 450.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: Color(0xFF66CA98),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Problem - 001 : ',
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 12.0,
                left: 0.0,
              ),
              child: Text(
                'Title - No cleanliness in MG',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
