
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DoctorHome extends StatefulWidget {
  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                    'doctor page'
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
