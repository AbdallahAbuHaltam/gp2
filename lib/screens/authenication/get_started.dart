import 'package:derbyjo/screens/authenication/authenication.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../wrapper.dart';
import '../about_us.dart';


class GetStart extends StatefulWidget {
  
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mBackgroundColor,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          child: Image.asset(
            "images/djo.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 80, 35, 0),
          child: Text(
            "Can't you play because you \n       don't have a team? ",
            style: TextStyle(
                fontSize: 25,
                color: mRedColor,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: AutofillHints.addressCity),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 35, 0),
          child: Text(
            "Welcome to Derby Jo  ",
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: AutofillHints.addressCity),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
          child: MaterialButton(
            minWidth: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wrapper()),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(95, 0, 0, 0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: mBackgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
          child: MaterialButton(
            minWidth: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wrapper()),
              );
            },
            color: mBackgroundColor,
            elevation: 10,
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(270, 20, 0, 0),
          child: Row(
            children: [
              Text(
                "learn more",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontFamily: AutofillHints.addressCity),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutUs()),
                    );
                  },
                  child: Text(
                    "About us",
                    style: TextStyle(
                        fontSize: 12,
                        color: mRedColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontFamily: AutofillHints.addressCity),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}