import 'package:flutter/material.dart';
import 'homepage.dart';

class createAccount extends StatelessWidget {
  createAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Signup.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            // Create account text
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Create account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            // Card 1
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            // Card 2
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            // Card 3
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            // Card 4
            Padding(
              padding: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            // Create button
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Create',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Image.asset(
                      'images/next.png',
                    ),
                    iconSize: 65.0,
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            // Bottom line
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Or create account using social media',
                style: TextStyle(
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Social media icons
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/facebook.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/Google.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/Twitter.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
