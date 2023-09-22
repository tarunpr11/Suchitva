import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
                child: Column(children: [
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
                ]))));
  }
}
