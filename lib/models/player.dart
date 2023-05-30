import 'package:cloud_firestore/cloud_firestore.dart';

class Players {
  String? playerId;
  late String email;
  late String username;
  late String password;
  late String fullName;
  late String phoneNo;
  late int age;
  late String gender;

  Players(
      {required this.email,
      required this.username,
      required this.password,
      required this.fullName,
      required this.phoneNo,
      required this.age,
      required this.gender});

  factory Players.fromSnapshot(DocumentSnapshot snapshot) {
    final newplayer = Players.fromJson(snapshot.data() as Map<String, dynamic>);
    newplayer.playerId = snapshot.reference.id;
    return newplayer;
  }

  Players.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        username = json['username'],
        password = json['password'],
        fullName = json['fullName'],
        phoneNo = json['phoneNo'],
        age = json['age'],
        gender = json['gender'];

  Map<String, dynamic> toJson() => _playersToJson(this);

  @override
  String toString() =>
      "Email<$email> UserName<$username> Password<$password> FullName<$fullName> PhoneNumber<$phoneNo> Age<$age> Gender <$gender>";

  Map<String, dynamic> _playersToJson(Players instance) => <String, dynamic>{
        'email': instance.email,
        'username': instance.username,
        'password': instance.password,
        'phoneNo': instance.phoneNo,
        'fullName': instance.fullName,
        'gender': instance.gender,
        'age': instance.age,
      };


    

}
