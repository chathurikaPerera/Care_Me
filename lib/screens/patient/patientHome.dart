
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
            child: Text(
            'patient page'
            ),
            ),
        RaisedButton(
          child: Text(
            'sign out',
          ),
          onPressed: signOut,
        )
          ],
        ),
      )
    );
  }

  signOut() async {
    _auth.signOut();
    // Navigator.push(context, MaterialPageRoute(builder: (context){
    //   return PatientHome();
    // }
    // ));

  }

}
