import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/gatoo.jpeg'),
                  radius: 40,
                ),
                SizedBox(height: 20),
                Text(
                  'Gatorade',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
                width:
                    20), // Add a SizedBox between the first and second Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/waterr.jpeg'),
                  radius: 40,
                ),
                SizedBox(height: 20),
                Text(
                  'Water',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
                width:
                    20), // Add a SizedBox between the second and third Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/park.jpeg'),
                  radius: 40,
                ),
                SizedBox(height: 20),
                Text(
                  'Parking',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
                width:
                    20), // Add a SizedBox between the third and fourth Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/kut.png'),
                  radius: 40,
                ),
                SizedBox(height: 20),
                Text(
                  'Kits',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}