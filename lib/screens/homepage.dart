import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/HomePage.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  //Welcome message
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: Text(
                      'Welcome back, Vivek!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  // Notification icon
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/notif.png'),
                      iconSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/qrscan.png'),
                      iconSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/fpicon.png'),
                      iconSize: 20.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    'images/location.png',
                    color: const Color(0xFFA9A9A7),
                    scale: 1.4,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Chennai, Tamil Nadu',
                      style: TextStyle(color: Color(0xFFA9A9A7)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.search,
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
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/filter.png'),
                    iconSize: 40.0,
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Card(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Explore',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('images/smartbin.png'),
                              iconSize: 40.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Smart-Bin Locator',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('images/truck.png'),
                              iconSize: 40.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Smart-Bin Locator',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('images/complaint.png'),
                              iconSize: 40.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Smart-Bin Locator',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              Flexible(
                child: Card(
                  color: const Color(0xFF66CA98),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/locationPin.png',
                        width: 60.0,
                        height: 60.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40.0),
                        child: Text(
                          'Now you can Buy,Sell and Rent \nused products from your Locality',
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('images/next.png'),
                        iconSize: 40.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
