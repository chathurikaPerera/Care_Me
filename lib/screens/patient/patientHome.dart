
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //return SafeArea()
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.indigo[900],
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(80),
              bottomRight: const Radius.circular(80),
            ),
          ),
        ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width:  MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
                  ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width:  MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width:  MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(4, 8),
                            blurRadius: 4.0,
                            //spreadRadius: 5.0,
                            color: Colors.red,
                        ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            SizedBox(height: 10.0,),
            RaisedButton(
            child: Text(
              'sign out',
            ),
            onPressed: signOut,
          )
            ],
          ),
      ],
      ),
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
