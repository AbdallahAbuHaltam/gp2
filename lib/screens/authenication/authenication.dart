import 'package:derbyjo/screens/authenication/login.dart';
import 'package:derbyjo/screens/authenication/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class Authenicate extends StatefulWidget {
  const Authenicate({super.key});

  @override
  State<Authenicate> createState() => _AuthenicateState();
}

class _AuthenicateState extends State<Authenicate> {
  bool _showSignin = true;

  void _toggleview() {
    setState(() {
      _showSignin = !_showSignin;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    if (_showSignin) {
      return Login(toggleview: _toggleview,);
    } else {
      return Signup(toggleview: _toggleview,);
    }
  }
}
