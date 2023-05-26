import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseServices{
  final String? uid;
  DataBaseServices({this.uid});
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");

  Future updateUserData(String username,String email,String phoneNo,String password)async{
    return await userCollection.doc(uid).set({
      "Username": username,
      "Email":email,
      "Phone Number": phoneNo,
      "Password": password,
    });
  }
  

  //get user stream
  Stream<QuerySnapshot> get users{
    return userCollection.snapshots();
  }
}

