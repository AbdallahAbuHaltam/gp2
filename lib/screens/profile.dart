import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../models/player.dart';
import '../services/auth.dart';
import '../utils/constants.dart';
import '../widgets/profile_menu.dart';
import '../firestore/database.dart';
import 'package:provider/provider.dart';

import 'authenication/signup.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        title: const Text("Profile"),
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
                        LineAwesomeIcons.alternate_pencil,
                        size: 20,
                        color: mBackgroundColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Abdullah Abuhaltam',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
               Text(
                player.username,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mRedColor,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: mBackgroundColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenu(
                title: "Settings",
                icon: LineAwesomeIcons.cog,
                onpress: () {},
              ),
              ProfileMenu(
                title: "User Management",
                icon: LineAwesomeIcons.user_check,
                onpress: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenu(
                title: "Information",
                icon: LineAwesomeIcons.info,
                onpress: () {},
              ),
              ProfileMenu(
                title: "Logout",
                icon: LineAwesomeIcons.alternate_sign_out,
                endIcon: false,
                onpress: () async {
                  await AuthService().signOut();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
