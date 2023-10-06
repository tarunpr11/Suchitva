import 'package:flutter/material.dart';
import 'package:nirmal/newscontent.dart';
import 'package:nirmal/complaint_list.dart';

class NewsPage extends StatefulWidget {
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Widget activeWidget = NewsContent();
  Color activeCardColor = Colors.green;
  Color inactiveCardColor = Colors.white;
  Color activeTextColor = Colors.white;
  Color inactiveTextColor = Colors.indigo;
  Color newsColor = Colors.green;
  Color cleanUpColor = Colors.white;
  Color alertColor = Colors.white;
  Color ComplaintsColor = Colors.white;
  Color newsText = Colors.white;
  Color cleanUpText = Colors.indigo;
  Color alertText = Colors.indigo;
  Color ComplaintsText = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/HomePage.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
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
                padding: const EdgeInsets.only(
                    top: 5.0, left: 15.0, right: 15.0, bottom: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
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
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.tune,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 4.0),
                child: Row(
                  children: [
                    TextButton(
                      child: Card(
                        color: newsColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'News',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 8.0,
                              color: newsText,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          activeWidget = NewsContent();
                          newsText = activeTextColor;
                          cleanUpText = inactiveTextColor;
                          alertText = inactiveTextColor;
                          ComplaintsText = inactiveTextColor;
                          newsColor = activeCardColor;
                          cleanUpColor = inactiveCardColor;
                          alertColor = inactiveCardColor;
                          ComplaintsColor = inactiveCardColor;
                        });
                      },
                    ),
                    TextButton(
                      child: Card(
                        color: cleanUpColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Clean-up drives',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 8.0,
                              color: cleanUpText,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          newsText = inactiveTextColor;
                          cleanUpText = activeTextColor;
                          alertText = inactiveTextColor;
                          ComplaintsText = inactiveTextColor;
                          newsColor = inactiveCardColor;
                          cleanUpColor = activeCardColor;
                          alertColor = inactiveCardColor;
                          ComplaintsColor = inactiveCardColor;
                        });
                      },
                    ),
                    TextButton(
                      child: Card(
                        color: alertColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Alerts',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 8.0,
                              color: alertText,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          newsText = inactiveTextColor;
                          cleanUpText = inactiveTextColor;
                          alertText = activeTextColor;
                          ComplaintsText = inactiveTextColor;
                          newsColor = inactiveCardColor;
                          cleanUpColor = inactiveCardColor;
                          alertColor = activeCardColor;
                          ComplaintsColor = inactiveCardColor;
                        });
                      },
                    ),
                    TextButton(
                      child: Card(
                        color: ComplaintsColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Complaints and Reports',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 6.5,
                              color: ComplaintsText,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          activeWidget = ComplainList();
                          newsText = inactiveTextColor;
                          cleanUpText = inactiveTextColor;
                          alertText = inactiveTextColor;
                          ComplaintsText = activeTextColor;
                          newsColor = inactiveCardColor;
                          cleanUpColor = inactiveCardColor;
                          alertColor = inactiveCardColor;
                          ComplaintsColor = activeCardColor;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              activeWidget,
            ],
          ),
        ),
      ),
    );
  }
}
