
import 'package:firebase_auth/firebase_auth.dart';
import 'package:derbyjo/models/user.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _firebase = FirebaseAuth.instance;

  
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth user change stream
  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebase(user!));
  }

  //Sign in with email and password
  Future login(String emailAddress, String password,BuildContext context) async {
    /* try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }*/
   try {
        final userCredentials = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: emailAddress, password: password);
      } on FirebaseAuthException catch (error) {
        if (error.code == 'user-not-found') {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
              (error.message ?? "No user found for that email.") as SnackBar);
        } else if (error.code == 'wrong-password') {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar((error.message ??
              "Wrong password provided for that user.") as SnackBar);
        }
      }
    
  }

  //register with email and password
  Future registerW(String emailAddress, String password,BuildContext context) async {
    /*try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }*/
    try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: emailAddress, password: password);
      } on FirebaseAuthException catch (error) {
        if (error.code == 'weak-password') {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar((error.message ??
              "The password provided is too weak.") as SnackBar);
        } else if (error.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar((error.message ??
              "The account already exists for that email.") as SnackBar);
        }
      } catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar((error) as SnackBar);
      }
    
  }

  //signout

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static SnackBar customSnackBar({required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: const TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
      ),
    );
  }

  //Sign in with google

  //signout from google
}
