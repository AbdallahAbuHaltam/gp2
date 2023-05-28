import 'package:derbyjo/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../CreatGame.dart';

class submitPage extends StatefulWidget {
  const submitPage({super.key});

  @override
  State<submitPage> createState() => _submitPageState();
}

enum Payment { visa, cash }

class _submitPageState extends State<submitPage> {
  dynamic item = 0;
  Payment? _payment = Payment.cash;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.red),
                ),
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    'ملاعب القوات المسلحة',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
          child: Container(
            height: 90,
            width: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 229, 229),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Image.asset(
                        "images/water.jpg",
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(170, 10, 0, 0),
                          child: Text(
                            "Gatorade",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(175, 30, 0, 0),
                          child: Row(
                            children: const [
                              Text(
                                "2.50 JD",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 215, 0, 0),
          child: Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 229, 229),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 222, 0),
                  child: Text(
                    "Payement",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(191, 17, 3, 68),
                        decoration: TextDecoration.none,
                        fontSize: 15),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 3, 0, 0),
                      child: Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(200, 3, 0, 0),
                      child: Text(
                        "27.50 Jd",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.none,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(47, 3, 0, 0),
                      child: Text(
                        "Tax",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(215, 3, 0, 0),
                      child: Text(
                        "0.60 Jd",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.none,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                      child: Text(
                        "Total Cost",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(170, 15, 0, 0),
                      child: Text(
                        "28.10 Jd",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.none,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 330, 0, 0),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Payement methods",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(197, 1, 40, 71),
                    decoration: TextDecoration.none,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 355, 0, 0),
          child: Container(
            height: 200,
            width: 350,
            child: Material(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ListTile(
                      title: Text('Cash'),
                      leading: Radio<Payment>(
                        value: Payment.cash,
                        groupValue: _payment,
                        onChanged: (value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                      trailing: Icon(Icons.money_rounded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: ListTile(
                      title: Text('Visa'),
                      leading: Radio<Payment>(
                        value: Payment.visa,
                        groupValue: _payment,
                        onChanged: (value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                      trailing: Icon(Icons.payment),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 475, 0, 0),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Discount code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(197, 1, 40, 71),
                    decoration: TextDecoration.none,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 510, 20, 0),
          child: Material(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Enter Code here',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: Icon(Icons.discount_rounded),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 590, 0, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Conferm()),
              );
            },
            child: Text('Submit'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(335, 50),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Conferm extends StatefulWidget {
  const Conferm({super.key});

  @override
  State<Conferm> createState() => _ConfermState();
}

class _ConfermState extends State<Conferm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Image.asset(
                  "images/conferm.png",
                  width: 500,
                  height: 200,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "The Booking is Completed ..",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontFamily: AutofillHints.countryName,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 204, 204, 204),
                        offset: Offset(3, 3),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(90, 50, 90, 25),
                child: MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  color: Color.fromARGB(255, 241, 61, 61),
                  elevation: 10,
                  height: 60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Back to home page",
                          style: TextStyle(
                            fontSize: 20,
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
        )
      ],
    );
  }
}
