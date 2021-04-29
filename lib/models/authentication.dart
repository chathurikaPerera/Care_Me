import 'dart:convert';


import 'package:care_me/screens/doctor/doctorHome.dart';
import 'package:care_me/screens/patient/patientHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Authentication with ChangeNotifier{
  FirebaseAuth auth = FirebaseAuth.instance;

  Widget build(BuildContext context) {
    return new StreamBuilder(
        stream: FirebaseFirestore.instance.collection('user').doc(auth.currentUser.uid).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var userDocument = snapshot.data;
            if(userDocument["role"] == "doctor")
              {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DoctorHome();
                }));
              }

          }
          return new Text("loading");
        }
    );
  }

  Future<void> addUser(String displayName, String email, String role) async{
  CollectionReference user = FirebaseFirestore.instance.collection('users');
  String uid = auth.currentUser.uid.toString();
  // user.add({
  //   "displayName" : displayName,
  //   "id" : uid,
  //   "email": email
  // });
  try{
    await user.doc(uid).set({
      'displayName' : displayName,
      'email' : email,
      'role' : role,
      'id' : uid,
      });

  } catch(e){
    return e;
  }
  // user.doc(uid).set({
  //   'displayName' : displayName,
  //   'email' : email,
  //   'role' : role,
  //   'id' : uid,
  // });
  // return;
}

  Future<void> signIn({String email, String password}) async {
    try {
      //await Firebase.initializeApp();
      UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      print("log in successfully");
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }



}

// Future<void> addUser(String displayName, String email) async{
//   CollectionReference user = FirebaseFirestore.instance.collection('users');
//   FirebaseAuth auth = FirebaseAuth.instance;
//   String uid = auth.currentUser.uid.toString();
//   user.add({
//     "displayName" : displayName,
//     "id" : uid,
//     "email": email
//   });
//   return;
// }