
import 'package:care_me/screens/patient/component/patient_body.dart';
import 'package:care_me/screens/patient/component/sidebar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //return SafeArea()
    return Scaffold(
      drawer: Sidebar(),

      // appBar: AppBar(
      //   backgroundColor: Colors.indigo[900],
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.menu_rounded,
      //       color: Colors.white,
      //     ),
      //     onPressed: (){},
      //   ),
      // ),
      body: Body(),
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
