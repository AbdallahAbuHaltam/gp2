import 'package:derbyjo/screens/book.dart';
import 'package:derbyjo/utils/constants.dart';
import 'package:flutter/material.dart';

class CreateGame extends StatefulWidget {
  const CreateGame({super.key});

  @override
  State<CreateGame> createState() => _CreateGameState();
}

class _CreateGameState extends State<CreateGame> {
  var sizeOfPlayeList = ["5 x 5", "6 x 6"];
  String sizeOfPlayeValue = "5 x 5";
  int selectedOptionIndex = -1;

  void selectOption(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  var statusList = ["Public", "private"];
  String statusValue = "Public";
  int selectedStatusIndex = -1;

  void selectStatus(int index) {
    setState(() {
      selectedStatusIndex = index;
    });
  }

  final List<String> cardContents = [
    'Al Jazeera Schools \n Stadium',
    'Alquaat Almusalahat \n Stadium',
    'Oxford Schools \n Stadium',
    'Luminous College \n Stadium,',
    'Al-Hikma Schools \n Stadium,',
    'Alkhudar Schools \n Stadium',
    'Zain Al Sharaf \n Stadium',
  ];

  final List<String> imagesStadium = [
    "stadiumImages/s1.jpg",
    "stadiumImages/s2.jpg",
    "stadiumImages/s3.jpg",
    "stadiumImages/s4.jpg",
    "stadiumImages/s5.jpg",
    "stadiumImages/s6.jpg",
    "stadiumImages/s7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: mRedColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "images/left.png",
                          width: 50,
                          height: 50,
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Creat a Game ",
                    style: TextStyle(
                        fontSize: 25,
                        color: mBackgroundColor,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(255, 237, 237, 237),
                            offset: Offset(1, 1),
                            blurRadius: 5,
                          ),
                        ],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: Container(
              color: mBackgroundColor,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 120, bottom: 14),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Select stadium ",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: mRedColor,
                                  shadows: [
                                    Shadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      offset: Offset(1, 1),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mBackgroundColor,
                      ),
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardContents.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => selectOption(index),
                              child: Card(
                                color: selectedOptionIndex == index
                                    ? mRedColor
                                    : mBackgroundColor,
                                child: Stack(
                                  children: [
                                    const Text(
                                      "Select Stadium",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              mRedColor,
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 208, 208, 208),
                                              offset: Offset(1, 1),
                                              blurRadius: 10,
                                            ),
                                          ],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            imagesStadium[index],
                                            width: 165,
                                            height: 170,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 130, left: 4),
                                          child: Text(
                                            cardContents[index],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  offset: Offset(10, 5),
                                                  blurRadius: 100,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 270, 10, 150),
                    child: Container(
                      decoration: BoxDecoration(
                          color: mBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(60, 50, 10, 10),
                                child: Text(
                                  "Player Size ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: mRedColor,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: mBackgroundColor,
                                        offset: Offset(1, 1),
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    decoration: BoxDecoration(
                                        boxShadow: [],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 2,
                                        color: mRedColor,
                                      ),
                                      value: sizeOfPlayeValue,
                                      onChanged: (String? value) {
                                        setState(() {
                                          sizeOfPlayeValue = value!;
                                        });
                                      },
                                      items:
                                          sizeOfPlayeList.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.fromLTRB(70, 50, 10, 10),
                                child: Text(
                                  "status of game ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: mRedColor,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color:
                                            Color.fromARGB(255, 219, 219, 219),
                                        offset: Offset(1, 1),
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 0),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 2,
                                        color: mRedColor,
                                      ),
                                      value: statusValue,
                                      onChanged: (String? value) {
                                        setState(() {
                                          statusValue = value!;
                                        });
                                      },
                                      items: statusList.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 470),
                    child: Container(
                      color: mBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(110, 40, 110, 25),
                        child: MaterialButton(
                          minWidth: 0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Booking()),
                            );
                          },
                          color: mRedColor,
                          elevation: 10,
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  "Create",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: mBackgroundColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
