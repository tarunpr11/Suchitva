import 'package:flutter/material.dart';
import 'package:nirmal/userPage.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Signup.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            // Create account text
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Create account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            // Card 1
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Aadhar Number',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
            ),
            // Card 2
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ),
            ),
            // Card 3
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.mail_sharp,
                    ),
                  ),
                ),
              ),
            ),
            // Card 4
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 40.0, right: 40.0, bottom: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_android,
                    ),
                  ),
                ),
              ),
            ),
            // Create button
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Create',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserPage()));
                    },
                    icon: Image.asset(
                      'images/next.png',
                    ),
                    iconSize: 65.0,
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            // Bottom line
            const Padding(
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
              padding: const EdgeInsets.only(top: 10.0),
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
