import 'package:flutter/material.dart';

import '../screens/home/home.dart';
 
class CustomDialog extends StatelessWidget {
  Future<void> showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success Verify'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Successfull Verfiying'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Conti'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }