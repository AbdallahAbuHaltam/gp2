import 'package:derbyjo/screens/authenication/login.dart';
import 'package:derbyjo/screens/authenication/signup.dart';
import 'package:flutter/material.dart';

class Authenicate extends StatefulWidget {
  const Authenicate({super.key});

  @override
  State<Authenicate> createState() => _AuthenicateState();
}

class _AuthenicateState extends State<Authenicate> {
  bool _showSignin = true;

  void toggleview() {
    setState(() {
      _showSignin = !_showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showSignin) {
      return Login(
        toggleview: toggleview,
      );
    } else {
      return Signup(
        toggleview: toggleview,
      );
    }
  }
}
