import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:derbyjo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => (user!=null)?MyUser(uid: user.uid):null);
  }

  Future registerW(String email,String password)async{
    
    try{
    UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    User? user = result.user;
    if (!_auth.currentUser!.emailVerified) {
      await _auth.currentUser!.sendEmailVerification();
    }
    return _userfromFirebase(user!);
    }
    catch(e){
      print(e.toString());
      return null;
    }
    
  }
  Future login(String email,String password) async{
    try{
    UserCredential result= await _auth.signInWithEmailAndPassword(email: email, password: password);
    User? user = result.user;
    return _userfromFirebase(user!);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signOut()async{
    try{
      
      return await _auth.signOut();
    }
    catch(e){
      print(
        e.toString()
      );
      return null;
    }
  }
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
   
}

/*class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }
  /*Future<String> getCurrentUID() async {
    return _auth.currentUser!.uid;
  }*/

  //auth user change stream
  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebase(user!));
  }
  /*StreamSubscription<User?> get onAuthStateChanged => _auth.authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });*/

  //Sign in with email and password
  Future login(
      String emailAddress, String password, BuildContext context) async {
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
      final userCredentials = await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
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
  Future registerW(
      String emailAddress, String password, BuildContext context) async {
    /*  try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }*/
    try {
      final userCredentials = await _auth.createUserWithEmailAndPassword(
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
    if (!_auth.currentUser!.emailVerified) {
      await _auth.currentUser!.sendEmailVerification();
    }
  }

  //signout
  
  Future<void> signOut() async {
  try {
    // Notify ID token listeners about the sign-out event   
     await _auth.currentUser?.getIdToken(true);
    // Notify authentication state listeners about the sign-out event
      _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        // User is signed out        // You can perform additional actions here if needed 
             }
    });
    // Sign out the user    
    await _auth.signOut();
  } catch (e) {
    print('Sign-out failed: $e');
  }
}

  //Sign in with google
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}


  //signout from google

*/