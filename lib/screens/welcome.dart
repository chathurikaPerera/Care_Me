import 'package:care_me/screens/background.dart';
import 'package:care_me/screens/patient/patientHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'doctor/doctorHome.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isLog = false;
  String userRole;


  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if(user == null)
        {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Background();
          }
          ));
        }
    });
  }

  getUser() async{
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;
    if(firebaseUser != null)
      {
        setState(() {
          this.user = firebaseUser;
          this.isLog = true;
        });
      }
  }

  signOut() async {
    _auth.signOut();
  }


  @override
   void initState(){
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Container(
        padding: EdgeInsets.only(top:100.0),
        child:  !isLog ? CircularProgressIndicator() : Column(
          children: <Widget>[

            Container(
              padding: EdgeInsets.only(top: 70.0),
              height: 150.0,
              //width: 300.0,
              //color: Colors.lightBlue,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(
                //   color: Colors.lightBlue,
                //   width: 2,
                // ),
                //color: Colors.lightBlue,
                image: DecorationImage(
                  scale: 4,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    'assets/images/doctor2.png',
                  ),
                ),
              ),

            ),
            Container(
              padding: EdgeInsets.only(top: 70.0),
              height: 150.0,
              //width: 300.0,
              //color: Colors.lightBlue,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(
                //   color: Colors.lightBlue,
                //   width: 2,
                // ),
                //color: Colors.lightBlue,
                image: DecorationImage(
                  scale: 4,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    'assets/images/pp.png',
                  ),
                ),
              ),

            ),
            RaisedButton(
              child: Text(
                'sign out',
              ),
              onPressed: signOut,
            ),
            RaisedButton(
              child: Text(
                'doctor',
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DoctorHome();
                }
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}


