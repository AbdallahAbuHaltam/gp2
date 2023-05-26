import 'package:derbyjo/utils/constants.dart';
import 'package:flutter/material.dart';

class Facuilities extends StatefulWidget {
  const Facuilities({super.key});

  @override
  State<Facuilities> createState() => _FacuilitiesState();
}

class _FacuilitiesState extends State<Facuilities> {
  dynamic item = 0;
  dynamic item2 = 0;
  dynamic item3 = 0;
  dynamic item4 = 0;
  dynamic sale = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Image.asset(
                    "images/gato.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      const Text(
                        "Gatorade",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "2.5JD",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.local_offer_outlined,
                            color: mRedColor,
                          ),
                          Text("15% Discount"),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 130, 10, 0),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: mRedColor),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                item -= 1;
                              });
                            },
                            child: const Icon(
                              Icons.remove_outlined,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: mBackgroundColor),
                          child: Text(
                            "$item",
                            style:
                                const TextStyle(color: mBlackColor, fontSize: 15),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                item += 1;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Image.asset(
                    "images/water.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "water shrink",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "2.5JD",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.local_offer_outlined,
                            color: mRedColor,
                          ),
                          Text("15% Discount")
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 130, 10, 0),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: mRedColor),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                item2 -= 1;
                              });
                            },
                            child: const Icon(
                              Icons.remove_outlined,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: mBackgroundColor),
                          child: Text(
                            "$item2",
                            style:
                                const TextStyle(color: mBlackColor, fontSize: 15),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                item2 += 1;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Image.asset(
                    "images/kut.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: const [
                      Text(
                        "Red Kit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Free",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 110, 10, 0),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: mRedColor),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                item3 -= 1;
                              });
                            },
                            child: const Icon(
                              Icons.remove_outlined,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: mBackgroundColor),
                          child: Text(
                            "$item3",
                            style:
                                const TextStyle(color: mBlackColor, fontSize: 15),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                item3 += 1;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Image.asset(
                    "images/cuty.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      Text(
                        "Yollow cut",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Free",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 110, 10, 40),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: mRedColor),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                item4 -= 1;
                              });
                            },
                            child: const Icon(
                              Icons.remove_outlined,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: mBackgroundColor),
                          child: Text(
                            "$item4",
                            style:
                                const TextStyle(color: mBlackColor, fontSize: 15),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                item4 += 1;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: mBackgroundColor,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*Badge(
            position: BadgePosition.topEnd(top: 3, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeColor: Colors.white,
            toAnimate: true,
            badgeContent: Text(
              '5',
              style: TextStyle(
                  fontSize: 8,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),*/
