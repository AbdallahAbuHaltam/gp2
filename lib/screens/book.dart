import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:derbyjo/models/game.dart';
import 'package:derbyjo/models/player.dart';
import 'package:derbyjo/screens/check_out.dart';
import 'package:derbyjo/services/auth.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/constants.dart';
import '../widgets/list_data.dart';
import 'date_picker.dart';

final AuthService _auth = AuthService();
int numberOfPlayer = 0;
int numberOfPlayer2 = 0;
String size = '';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  late int numPlyer;

  void _updateFillCount(int count) {
    setState(() {
      numberOfPlayer = count;
      size = '5X5';
    });
  }

  void _updateFillCount2(int count) {
    setState(() {
      numberOfPlayer2 = count;
      size = '6X6';
    });
  }

  List<Widget> _buildIconRows() {
    List<Widget> iconRows = [];
    List<IconButton> iconButtons = [];

    for (int i = 0; i < 10; i++) {
      iconButtons.add(
        IconButton(
          icon: Icon(
            Icons.person,
            size: 65,
            color: i < numberOfPlayer ? Colors.red : Colors.grey,
          ),
          onPressed: () {
            _updateFillCount(i + 1);
          },
        ),
      );

      if (iconButtons.length == 5 || i == 9) {
        iconRows.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 30, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconButtons,
            ),
          ),
        );
        iconButtons = [];
      }
    }

    return iconRows;
  }

  List<Widget> _buildIconRows2() {
    List<Widget> iconRows2 = [];
    List<IconButton> iconButtons2 = [];

    for (int i = 0; i < 12; i++) {
      iconButtons2.add(
        IconButton(
          icon: Icon(
            Icons.person,
            size: 65,
            color: i < numberOfPlayer2 ? Colors.red : Colors.grey,
          ),
          onPressed: () {
            _updateFillCount2(i + 1);
          },
        ),
      );

      if (iconButtons2.length == 6 || i == 11) {
        iconRows2.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 30, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iconButtons2,
            ),
          ),
        );
        iconButtons2 = [];
      }
    }

    return iconRows2;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
        width: 411,
        height: 250,
        color: mBackgroundColor,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Image.asset(
                "images/stadiumphoto.png",
                fit: BoxFit.fill,
                width: 411,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "images/left.png",
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                  child: FavoriteButton(
                    iconSize: 40,
                    isFavorite: true,
                    // iconDisabledColor: Colors.white,
                    valueChanged: (isFavorite) {
                      // ignore: avoid_print
                      print('Is Favorite : $isFavorite');
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(20, 170, 20, 0),
          child: SingleChildScrollView(
              child: Container(
            decoration: BoxDecoration(
                color: mBackgroundColor,
                borderRadius: BorderRadius.circular(17)),
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('playgroundInfo')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          height: 30,
                          child: Text(snapshot.data!.docs[i]['playgroundName'],
                              style: TextStyle(
                                  fontSize: 25,
                                  decoration: TextDecoration.none,
                                  color: mBlackColor,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(130, 10, 0, 0),
                        child: Row(children: const [
                          Text(
                            "Amman-Jordan",
                            style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: mBlackColor),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(130, 5, 0, 0),
                        child: Row(children: [
                          Row(
                            children: const [
                              Text(
                                "Open",
                                style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    color: mBlackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "10am - 2am",
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      color: mBlackColor),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(120, 3, 0, 0),
                        child: Row(children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: mYellow,
                          ),
                          Text(
                            "2.5 km",
                            style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: mBackgroundColor),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "5.0",
                              style: TextStyle(
                                fontSize: 10,
                                color: mBlackColor,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.star_outline_rounded,
                            color: mYellow,
                          ),
                        ]),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Container(
                                  height: 200,
                                  width: 350,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "images/stadiumtraning.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      ..._buildIconRows(),
                                      SizedBox(height: 16),
                                      Text(
                                        'Number of player: $numberOfPlayer',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Container(
                                  height: 200,
                                  width: 350,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "images/stadiumtraning.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      ..._buildIconRows2(),
                                      SizedBox(height: 16),
                                      Text(
                                        'Number of player: $numberOfPlayer2',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Pick Date",
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(255, 208, 208, 208),
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                  ),
                                ],
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            DateTimePickerDialog(),
                          ],
                        ),
                      ),
                      // Checkdate(),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection('playgroundInfo')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(52, 0, 40, 25),
                                  child: MaterialButton(
                                    minWidth: 0,
                                    onPressed: () async {
                                      _auth.addBook(
                                          date: date,
                                          playgroundName: snapshot.data!.docs[i]
                                              ['playgroundName'],
                                          player: Players(
                                              username: players.username,
                                              phoneNo: players.phoneNo),
                                          size: size,
                                          price: snapshot.data!.docs[i]
                                              ['price'],
                                          noPlayers: numberOfPlayer);
                                      print(players.username);

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CheckOut()),
                                      );
                                    },
                                    color:
                                        const Color.fromARGB(255, 241, 61, 61),
                                    elevation: 10,
                                    height: 50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(70, 0, 0, 0),
                                          child: Text(
                                            "Book a game",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  );
                }),
          )))
    ]));
  }
}

class Checkdate extends StatefulWidget {
  const Checkdate({super.key});

  @override
  State<Checkdate> createState() => _CheckdateState();
}

class _CheckdateState extends State<Checkdate> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Checkout').snapshots(),
        builder: (context, snapshot) {
          Timestamp timestamp = snapshot.data!.docs[i]['date'];
          DateTime datee = timestamp.toDate();
          return ElevatedButton(
            child: Text('GG'),
            onPressed: () {
              if (datee == date) {
                setState(() {
                  numberOfPlayer = snapshot.data!.docs[i]['NoPlayers'];
                  print('DONE');
                });
              } else {
                setState(() {
                  numberOfPlayer = 0;
                });
                print('GG');
              }
            },
          );
        });
  }
}
