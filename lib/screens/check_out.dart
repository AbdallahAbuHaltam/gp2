
import 'package:derbyjo/screens/facuilities.dart';
import 'package:derbyjo/screens/info.dart';
import 'package:derbyjo/screens/review.dart';
import 'package:flutter/material.dart';


import 'package:favorite_button/favorite_button.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int index = 0;
  bool isFavorite = false;
  dynamic sale = 0;

  List pages = [const Facuilities(), const Reviews(), const Info()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: 411,
            height: 200,
            color: Colors.red,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.asset(
                    "images/stadiumphoto.png",
                    fit: BoxFit.fill,
                    width: 411,
                    height: 185,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        "images/left.png",
                      )),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                    child: FavoriteButton(
                      iconSize: 40,
                      isFavorite: true,
                      // iconDisabledColor: Colors.white,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 170, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(17)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(350, 0, 0, 0),
                  child: Container(
                    height: 25,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star_outline_rounded,
                          color: Colors.amber,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 30,
                    child: const Text("ملعب القوات المسلحة",
                        style: TextStyle(
                            fontSize: 25,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(155, 0, 0, 0),
                  child: Row(children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Text(
                      "Amman-Jordan",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
                  child: Row(children: const [
                    Text(
                      "2.5 km",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                  ]),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 265, 0, 0),
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Scaffold(
                  backgroundColor: Color.fromARGB(255, 208, 208, 208),
                  body: NavigationBar(
                      elevation: 0,
                      height: 60,
                      selectedIndex: index,
                      onDestinationSelected: (index) =>
                          setState(() => this.index = index),
                      destinations: [
                        NavigationDestination(
                            icon: Image.asset(
                              "images/fac1.png",
                              width: 80,
                              fit: BoxFit.fill,
                            ),
                            label: ""),
                        NavigationDestination(
                            icon: Image.asset(
                              "images/rev9.png",
                              width: 80,
                              fit: BoxFit.fill,
                            ),
                            label: ""),
                        NavigationDestination(
                            icon: Image.asset(
                              "images/info9.png",
                              width: 80,
                              fit: BoxFit.fill,
                            ),
                            label: ""),
                      ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 345, 0, 0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Scaffold(
                  backgroundColor: Color.fromARGB(255, 229, 229, 229),
                  body: Center(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        pages[index],
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(52, 620, 50, 0),
            child: MaterialButton(
              minWidth: 0,
              onPressed: () {},
              color: Color.fromARGB(255, 218, 44, 93),
              elevation: 10,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Text(
                    "1 item",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text(
                      "checkout",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      "37.00JD",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
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
