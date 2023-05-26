import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              color: Color.fromARGB(255, 241, 206, 203),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "images/bader.jpg",
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Mohammad Bader",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: Row(
                      children: [
                        Text("It's very good stadium hahahahaha"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                ],
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 236, 229, 228),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "images/moalsaaadi.jpeg",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Mohammad Alsaadi",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("It's very baaaaaaaaaaaaaaaad stadium lol"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_outline_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        "2.0",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 241, 206, 203),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "images/water.jpg",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "water",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("iam water please help me heheehehehhehehehe"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_outline_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 236, 229, 228),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "images/gato.jpg",
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "gatoo",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("nkbndklbnslknklsnl;m;lsnms"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_outline_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}