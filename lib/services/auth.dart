import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:derbyjo/models/player.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../main.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Players? _userfromFirebase(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? Players(uId: user.uid) : null;
  }

  Stream<Players?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebase(user!));
  }

  Future userSignup({
    required String email,
    String? username,
    required String password,
    int? age,
    String? gender,
    String? phoneNo,
    String? fullName,
  }) async {
    _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.uid);
      print(value.user!.email);
      Players model = Players(
          email: email,
          username: username,
          password: password,
          fullName: fullName,
          phoneNo: phoneNo,
          age: age,
          gender: gender,
          uId: value.user!.uid);
      //User? user = value.user;
      userCollection
          .doc(value.user!.uid)
          .set(model.toMap())
          .then((value) => print('success'))
          .catchError((e) {
        print(e.toString());
        //_userfromFirebase(user!);
      });
    }).catchError((e) {
      print(e.toString());
    });
  }

  Future userLogin({required String email, required String password}) async {
    _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      //User? user = value.user;

      FirebaseFirestore.instance
          .collection('users')
          .doc(value.user?.uid)
          .get()
          .then((value) {
        final uid = value.data()?['uId'];
        players.uId = uid;
        players.username = value.data()?['username'];
        players.email = value.data()?['email'];
        players.password = value.data()?['password'];
        players.phoneNo = value.data()?['phoneNo'];
        players.gender = value.data()?['gender'];
        players.fullName = value.data()?['fullName'];

        if (uid != null) {
          print("Success Login");
        } else {
          print("Falied Login");
        }
        //getData(uId: uid);
        //_userfromFirebase(user!);
      }).catchError((e) {
        print(e.toString());
      });
    }).catchError((e) {
      print(e.toString());
    });
  }



  Future edit({
    required String email,
     required String username,
    required String password,
    int? age,
    String? gender,
     required String phoneNo,
    String? fullName,
  }) async {
    
    
      Players model = Players(
          email: email,
          username: username,
          password: password,
          fullName: fullName,
          phoneNo: phoneNo,
          age: age,
          gender: gender,
          uId: players.uId);
     userCollection.doc(players.uId).update(model.toMap()).then((value) {
       


      print("Edited Success");
    }).catchError((e){
      print(e.toString());
    });
    players.username=model.username;
  }
/*Future getData({ String? uId,})async{
FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
Players playerModel=Players.formJson(value.data());
print(playerModel.username);

}).catchError((e){
  print(e.toString());
});
}*/

  /*Future registerW(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      //create a new document for the user with the id
      await DataBaseServices(uid: user!.uid).addData(
          player.username,
          player.email,
          player.phoneNo,
          player.password,
          player.fullName,
          player.age,
          player.gender);
      if (!_auth.currentUser!.emailVerified) {
        await _auth.currentUser!.sendEmailVerification();
      }
      return _userfromFirebase(user);
    } catch (e) {
      return null;
    }
  }*/

/*  Future login(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    } catch (e) {
      return null;
    }
  }
*/
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
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
