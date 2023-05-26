import 'dart:async';

import 'package:derbyjo/firestore/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:derbyjo/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/authenication/signup.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser? _userfromFirebase(User user) {
    // ignore: unnecessary_null_comparison
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
    //create a new document for the user with the id
    await DataBaseServices(uid: user!.uid).updateUserData(player.username, player.email, player.phoneNo, player.password);
    if (!_auth.currentUser!.emailVerified) {
      await _auth.currentUser!.sendEmailVerification();
    }
    return _userfromFirebase(user);
    }
    catch(e){
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
      return null;
    }
  }

  Future signOut()async{
    try{
      
      return await _auth.signOut();
    }
    catch(e){
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
