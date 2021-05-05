
import 'package:care_me/screens/patient/component/patient_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //return SafeArea()
    return Scaffold(
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
      // body: Stack(
      //   children: <Widget>[
      //   Container(
      //     height: MediaQuery.of(context).size.height * 0.2,
      //     width: MediaQuery.of(context).size.width,
      //     child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.indigo[900],
      //       borderRadius: BorderRadius.only(
      //         bottomLeft: const Radius.circular(36),
      //         bottomRight: const Radius.circular(36),
      //       ),
      //     ),
      //   ),
      //   ),
      //     SingleChildScrollView(
      //       child: Container(
      //         margin: EdgeInsets.only(top: 180),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: <Widget>[
      //             Row(
      //              mainAxisAlignment: MainAxisAlignment.center,
      //              children: <Widget>[
      //                Container(
      //                   height: MediaQuery.of(context).size.height * 0.2,
      //                   width:  MediaQuery.of(context).size.width * 0.8,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.all(Radius.circular(20)),
      //                     color: Colors.white,
      //                     boxShadow: [
      //                       BoxShadow(
      //                         offset: const Offset(0, 7),
      //                         blurRadius: 5.0,
      //                         //spreadRadius: 7.0,
      //                         color: Colors.red,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //                 ],
      //             ),
      //             SizedBox(height: 55,),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                 Container(
      //                     height: MediaQuery.of(context).size.height * 0.2,
      //                     width:  MediaQuery.of(context).size.width * 0.8,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(Radius.circular(20)),
      //                       color: Colors.white,
      //                       boxShadow: [
      //                         BoxShadow(
      //                           offset: const Offset(0, 3),
      //                           blurRadius: 10.0,
      //                           spreadRadius: 7.0,
      //                           color: Colors.red,
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //               ],
      //             ),
      //             SizedBox(height: 50,),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                   //borderRadius: BorderRadius.all(Radius.circular(20)),
      //                   Container(
      //                     height: MediaQuery.of(context).size.height * 0.2,
      //                     width:  MediaQuery.of(context).size.width * 0.8,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(Radius.circular(20)),
      //                       color: Colors.white,
      //                       boxShadow: [
      //                         BoxShadow(
      //                           offset: const Offset(0, 3),
      //                           blurRadius: 10.0,
      //                           spreadRadius: 7.0,
      //                           color: Colors.red,
      //                       ),
      //                       ],
      //                     ),
      //
      //                   ),
      //               ],
      //             ),
      //           SizedBox(height: 10.0,),
      //           RaisedButton(
      //           child: Text(
      //             'sign out',
      //           ),
      //           onPressed: signOut,
      //         )
      //           ],
      //         ),
      //       ),
      //     ),
      // ],
      // ),
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
