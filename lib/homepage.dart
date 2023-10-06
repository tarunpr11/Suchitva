import 'package:flutter/material.dart';
import 'package:nirmal/map_page.dart';
import 'package:nirmal/complaintBox.dart';

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
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  // Notification icon
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/notif.png'),
                      iconSize: 11.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/qrscan.png'),
                      iconSize: 11.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/fpicon.png'),
                      iconSize: 11.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      '50',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  )
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
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 15.0, right: 15.0, bottom: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapPage()));
                              },
                              icon: Image.asset('images/smartbin.png'),
                              iconSize: 40.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Smart-Bin Locator',
                                style: TextStyle(fontSize: 9.0),
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
                                'Garbage Truck Locator',
                                style: TextStyle(fontSize: 8),
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ComplaintBox()));
                              },
                              icon: Image.asset('images/complaint.png'),
                              iconSize: 40.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Complaints and Reports',
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
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
                            vertical: 15.0, horizontal: 7.0),
                        child: Text(
                          'Now you can Buy,Sell and Rent \nused products from your Locality',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('images/next.png'),
                        iconSize: 55.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: const BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      //     boxShadow: [
      //       BoxShadow(
      //         blurRadius: 10.0,
      //         color: Color(0xFF66CA98),
      //       ),
      //     ],
      //   ),
      //   child: const ClipRRect(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      //     child: BottomBar(),
      //   ),
      // ),
    );
  }
}

// class BottomBar extends StatefulWidget {
//   const BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int tapIndex = 0;
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: tapIndex,
//       onTap: (int index) {
//         setState(() {
//           tapIndex = index;
//           print(index);
//         });
//       },
//       items: [
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.home_outlined,
//             ),
//             iconSize: 38.0,
//             color: Colors.grey[350],
//           ),
//           label: '',
//           activeIcon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/ActiveHome.png'),
//             iconSize: 20.0,
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/newsIcon.png'),
//             iconSize: 20.0,
//           ),
//           label: '',
//           activeIcon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/ActivenewsIcon.png'),
//             iconSize: 20.0,
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.add_circle,
//               color: Color(0xFF66CA98),
//             ),
//             iconSize: 40.0,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/ChatIcon.png'),
//             iconSize: 20.0,
//           ),
//           label: '',
//           activeIcon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/ActiveChat.png'),
//             iconSize: 20.0,
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/profileIcon.png'),
//             iconSize: 20.0,
//           ),
//           label: '',
//           activeIcon: IconButton(
//             onPressed: () {},
//             icon: Image.asset('images/ActiveProfile.png'),
//             iconSize: 20.0,
//           ),
//         ),
//       ],
//     );
//   }
// }
