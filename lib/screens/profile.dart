import 'package:derbyjo/screens/update_profile.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/player.dart';
import '../services/auth.dart';
import '../utils/constants.dart';
import '../widgets/profile_menu.dart';
import 'authenication/get_started.dart';

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
      //final AuthService _auth = AuthService();
      
    //final user = _auth.getData();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold),
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
              Text(
        "${players.fullName}",
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
      Text(
        "${players.username}",
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
    
              
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateProfile(),
                      ),
                    );
                  },
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
// ignore: use_build_context_synchronously
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GetStart(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _builderName(Players? player, context) {
  
  return Column(
    children: [
      Text(
        "${player?.fullName}",
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
      Text(
        "${player?.username}",
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
    ],
  );
}
