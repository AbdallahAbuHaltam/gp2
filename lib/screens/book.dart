import 'package:derbyjo/screens/check_out.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
          child: Expanded(
            child: SingleChildScrollView(
                child: Container(
              decoration: BoxDecoration(
                  color: mBackgroundColor,
                  borderRadius: BorderRadius.circular(17)),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                      height: 30,
                      child: Text("ملعب القوات المسلحة",
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Container(
                        height: 200,
                        width: 350,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/stadiumtraning.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                              child: Row(children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "images/bader.jpg",
                                          width: 600,
                                          height: 300,
                                        ),
                                        onPressed: () {},
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "images/add3.png",
                                          width: 500,
                                          height: 300,
                                          color: mBackgroundColor,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPlayer()),
                                          );
                                        },
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "images/add3.png",
                                          width: 500,
                                          height: 300,
                                          color: mBackgroundColor,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPlayer()),
                                          );
                                        },
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "images/add3.png",
                                          width: 500,
                                          height: 300,
                                          color: mBackgroundColor,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPlayer()),
                                          );
                                        },
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset("images/add3.png",
                                            width: 500,
                                            height: 300,
                                            color: mBackgroundColor),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPlayer()),
                                          );
                                        },
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "images/add3.png",
                                          width: 500,
                                          height: 300,
                                          color: mBackgroundColor,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddPlayer()),
                                          );
                                        },
                                      )),
                                ),
                              ]),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 30, 0, 0),
                                  child: Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 600,
                                                height: 300,
                                                color: mBackgroundColor,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const AddPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: mBackgroundColor,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const AddPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: mBackgroundColor,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const AddPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: IconButton(
                                            icon: Image.asset(
                                              "images/add3.png",
                                              width: 500,
                                              height: 300,
                                              color: mBackgroundColor,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddPlayer()),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: IconButton(
                                            icon: Image.asset(
                                              "images/add3.png",
                                              width: 500,
                                              height: 300,
                                              color: mBackgroundColor,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AddPlayer()),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: IconButton(
                                            icon: Image.asset(
                                              "images/add3.png",
                                              width: 500,
                                              height: 300,
                                              color: mBackgroundColor,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AddPlayer(),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),

//#################    calender here    ######################

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                    child: Container(
                      color: mBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(52, 0, 40, 25),
                        child: MaterialButton(
                          minWidth: 0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CheckOut()),
                            );
                          },
                          color: mRedColor,
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
                                  color: mBackgroundColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Text(
                                  "checkout",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: mBackgroundColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                child: Text(
                                  "37.00JD",
                                  style: TextStyle(
                                    fontSize: 15,
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
            )),
          ))
    ]));
  }
}

class AddPlayer extends StatefulWidget {
  const AddPlayer({super.key});

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 130, 50, 130),
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 225, 0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset(
                            "images/left.png",
                          )),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        labelText: 'User Name',
                        isDense: true,
                        prefixIcon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 10, 50, 60),
                child: MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Booking()),
                    );
                  },
                  color: mRedColor,
                  elevation: 10,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: const [
                            Text(
                              "find ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Align(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/bader.jpg",
                            width: 50,
                            height: 50,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Mohammad Bader",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: mBlackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
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
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Add ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: mBackgroundColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
} /**/