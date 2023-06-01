import 'package:cloud_firestore/cloud_firestore.dart';


/*
class DataRepository {
  // 1
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('pets');
  // 2
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }
  // 3
  Future<DocumentReference> addPet(Players player) {
    return collection.add(player.toJson());
  }
  // 4
  void updatePet(Players player) async {
    await collection.doc(player.playerId).update(player.toJson());
  }
  // 5
  void deletePet(Players player) async {
    await collection.doc(player.playerId).delete();
  }
}*/

class DataBaseServices {
  final String? uid;
  DataBaseServices({this.uid});
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future updateData(
       String email, String phoneNo, String password,String fullName) async {
    return await userCollection.doc(uid).update({
      "Email": email,
      "Phone Number": phoneNo,
      "Password": password,
      "Full Name": fullName,
    });
  }

  

  Future addData(
      String username, String email, String phoneNo, String password,String fullName,int age,String gender)async {
    return await userCollection.add({
      "Username": username,
      "Email": email,
      "Phone Number": phoneNo,
      "Password": password,
      "FullName":fullName,
      "Age": age,
      "Gender":gender,
      
    });
  }

  //get user stream
  Stream<QuerySnapshot> getStream() {
    return userCollection.snapshots();
  }


  
  
  // 4
  
  // 5
 
}
