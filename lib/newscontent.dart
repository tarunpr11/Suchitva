import 'package:flutter/material.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF66CA98),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Image.asset(
                      'images/news1.png',
                      fit: BoxFit.fill,
                      height: 110.0,
                      width: 110.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Kerala to pass stricter law for \nwaste management: Minister ',
                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12.0,
                          left: 50.0,
                        ),
                        child: Text(
                          '- July 25, 2023 at 01:11 PM.',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF66CA98),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Image.asset(
                      'images/news2.png',
                      fit: BoxFit.fill,
                      height: 110.0,
                      width: 110.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Kerala to integrate Posco Act, \nscientific waste management lessons \nin school curriculum ',
                          style: TextStyle(
                              fontSize: 11.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12.0,
                          left: 50.0,
                        ),
                        child: Text(
                          '- Aug 16, 2023 16:45 IST',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF66CA98),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Image.asset(
                      'images/news3.png',
                      fit: BoxFit.fill,
                      height: 110.0,
                      width: 110.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Kerala govt readies twin plans \nto combat waste issue',
                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12.0,
                          left: 50.0,
                        ),
                        child: Text(
                          '- May 3, 2023, 11:33 IST',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
