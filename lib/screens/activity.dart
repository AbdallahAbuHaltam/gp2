import 'package:flutter/material.dart';

import 'book.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.redAccent,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent,
            ),
            tabs: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Tab(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.redAccent,
                            width: 1,
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Upcoming Activities"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1,
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Past Activities"),
                  ),
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                currentTab = index;
              });
            },
          ),
        ),
        body: IndexedStack(
          index: currentTab,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 230, 229, 229),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s2.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 0, 0, 0),
                                                    child: Text(
                                                      'ملعب القوات المسلحة',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Amman, Jordan'),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(25, 5, 0, 0),
                                                    child: MaterialButton(
                                                      minWidth: 0,
                                                      onPressed: () {},
                                                      color: Colors.red,
                                                      elevation: 10,
                                                      height: 45,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child:  Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets
                                                                .fromLTRB(10, 0,
                                                                    0, 0),
                                                            child: Row(
                                                              children: const [
                                                                Text(
                                                                  "Today from \n 8pm - 10pm",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 180, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s3.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            35, 0, 0, 0),
                                                    child: Text(
                                                      'ملعب شفا بدران',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                   Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Amman, Jordan'),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(40, 5, 0, 0),
                                                    child: MaterialButton(
                                                      minWidth: 0,
                                                      onPressed: () {},
                                                      color: Colors.red,
                                                      elevation: 10,
                                                      height: 45,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child:  Row(
                                                        children: [
                                                          Row(
                                                            children: const [
                                                              Text(
                                                                "Today from \n 10pm - 12pm",
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 20, 10, 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.red,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                           Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 5, 60, 0),
                                                child: Text(
                                                  'Today from \n 6pm - 8pm',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 19,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 5, 60, 0),
                                            child: Text(
                                              'ملعب الاتحاد',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontSize: 19,
                                              ),
                                            ),
                                          ),
                                           Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 0, 0, 0),
                                                child: Icon(
                                                  Icons.location_on,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text('Amman, Jordan'),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 0, 0, 0),
                                                child: Icon(
                                                  Icons.star_rate,
                                                  color: Colors.yellow,
                                                ),
                                              ),
                                              Text('4.6'),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 5, 40, 10),
                                            child: MaterialButton(
                                              minWidth: 0,
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Booking()),
                                                );
                                              },
                                              color: Colors.red,
                                              elevation: 10,
                                              height: 45,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child:  Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Row(
                                                      children: const [
                                                        Text(
                                                          "Book now!",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 30),
                                        child: Positioned(
                                          child: Image.asset(
                                            'stadiumImages/s5.jpg',
                                            height: 150,
                                            width: 170,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 230, 229, 229),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s4.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                             Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 0, 0, 0),
                                                    child: Text(
                                                      'ملعب الوحدة ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Amman, Jordan'),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            25, 5, 0, 0),
                                                    child: Text(
                                                      '3/6/2023\n6pm - 8pm',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 180, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s6.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                             Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  5, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            35, 0, 0, 0),
                                                    child: Text(
                                                      ' ملعب الحسين ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Irbid, Jordan'),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 5, 0, 0),
                                                    child: Text(
                                                      '28/5/2023\n8pm - 10pm',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 350, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s1.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                             Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  5, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 0, 0, 0),
                                                    child: Text(
                                                      "ملعب مدارس الخضر",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Zarqa, Jordan'),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 5, 0, 0),
                                                    child: Text(
                                                      '5/4/2023\n3pm - 5pm',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 520, 10, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'stadiumImages/s2.jpg',
                                                  height: 150,
                                                  width: 170,
                                                ),
                                              ),
                                            ),
                                             Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  5, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            35, 0, 0, 0),
                                                    child: Text(
                                                      'ملعب شفا بدران',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 19,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Text('Amman, Jordan'),
                                                    ],
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 5, 0, 0),
                                                    child: Text(
                                                      '28/2/2023\n8pm - 10pm',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
    );
  }
}
