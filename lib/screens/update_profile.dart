import 'package:derbyjo/services/auth.dart';
import 'package:derbyjo/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formKey = GlobalKey<FormState>();

  final AuthService _auth = AuthService();

    late  TextEditingController _emailcontroller = TextEditingController();
    late  TextEditingController _usernamecontroller = TextEditingController();
    late  TextEditingController _phonecontroller = TextEditingController();
    late  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 80.0),
          child: Text(
            "Edit Profile",
            style: TextStyle(
              color: mBackgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: mRedColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage('images/pro.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: mRedColor.withOpacity(0.8),
                      ),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        size: 20,
                        color: mBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Full Name'),
                          prefixIcon: Icon(LineAwesomeIcons.user),
                        ),
                        onChanged: (value) {
                          _usernamecontroller = value as TextEditingController;
                        },
                        onSaved: (newValue) {
                          _usernamecontroller = newValue! as TextEditingController;
                        },
                        onTap: () async {
                          
                        }),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Email'),
                        prefixIcon: Icon(LineAwesomeIcons.envelope),
                      ),
                      onChanged: (value) {
                          _emailcontroller = value as TextEditingController;
                        },
                        onSaved: (newValue) {
                          _emailcontroller = newValue! as TextEditingController;
                        },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Phone No'),
                        prefixIcon: Icon(LineAwesomeIcons.phone),
                      ),
                      onChanged: (value) {
                          _phonecontroller = value as TextEditingController;
                        },
                        onSaved: (newValue) {
                          _phonecontroller = newValue! as TextEditingController;
                        },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                        prefixIcon: Icon(LineAwesomeIcons.fingerprint),
                      ),
                      onChanged: (value) {
                          _passwordcontroller = value as TextEditingController;
                        },
                        onSaved: (newValue) {
                          _passwordcontroller = newValue! as TextEditingController;
                        },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () async{
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            //await data.up(player.fullName,player.email,player.phoneNo,player.password);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mRedColor,
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Update Profile',
                          style: TextStyle(color: mBackgroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
