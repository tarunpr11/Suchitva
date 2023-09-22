import 'package:flutter/material.dart';
import 'createaccount.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginback.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child: Image.asset('images/loginbacklogo.png'),
              height: 260.0,
            ),
            Center(
              child: Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DropButton(),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                  ),
                  title: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 40.0, top: 8.0),
                child: Text(
                  'Forgot your password?',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sign Up',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => createAccount()));
                    },
                    icon: Image.asset(
                      'images/next.png',
                    ),
                    iconSize: 65.0,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

class DropButton extends StatefulWidget {
  const DropButton({super.key});

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String? currentUser = 'Driver';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9.0, left: 40.0, right: 40.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: ListTile(
          leading: Icon(
            Icons.person,
          ),
          title: DropdownButton<String>(
            items: <String>['Driver', 'Municipality', 'Public User']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            dropdownColor: Colors.grey,
            onChanged: (String? newValue) {
              setState(() {
                currentUser = newValue;
              });
            },
            value: currentUser,
          ),
        ),
      ),
    );
  }
}
