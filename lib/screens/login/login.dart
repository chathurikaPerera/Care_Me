
//
//   //final FirebaseAuth _auth = FirebaseAuth.instance; //for firebase
//   final GlobalKey<FormState> _formkey = GlobalKey(); //form
//   Map<String, String> _authData = {
//     'email': '',
//     'password': ''
//   };
//
//   Future<void> _submit() async{
//     if(!_formkey.currentState.validate())
//       {
//         return;
//       }
//     _formkey.currentState.validate();
//     print(_authData['email']);
//     await Provider.of<Authentication>(context, listen: false).logIn(
//         _authData['email'],
//         _authData['password']
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         //height: size.height,
//         //width: double.infinity,
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 child: Text(
//                   'LOGIN',
//                   style: TextStyle(
//                     fontSize: 25.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.purple[500],
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 250.0,
//                 decoration: BoxDecoration(
//                   //color: Colors.cyan,
//                     image: DecorationImage(
//                         alignment: Alignment.center,
//                         image: AssetImage(
//                           'assets/images/image3.png',
//                         )
//                     )
//                 ),
//               ),
//               Form(
//                 key: _formkey,
//                 child: Container(
//                   margin: const EdgeInsets.all(24.0),
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(top: 20.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.purple[500],
//                             //hintText: 'Email',
//                             labelText: 'Email',
//                             labelStyle: TextStyle(
//                                 color: Colors.purple[200]
//                             ),
//                           ),
//                           cursorHeight: 25.0,
//                           validator: (value){
//                             if(value.isEmpty || !value.contains('@'))
//                               {
//                                 return 'Inavlid email';
//                               }
//                             return null;
//                           },
//                           onSaved: (value)
//                           {
//                             _authData['email'] = value.trim();
//                           },
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(top: 20.0),
//                         child: TextFormField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             focusColor: Colors.purple[500],
//                             //hintText: 'Password',
//                             labelText: 'Password',
//                             labelStyle: TextStyle(
//                                 color: Colors.purple[200]
//                             ),
//                           ),
//                           cursorHeight: 25.0,
//                           validator: (value){
//                             if(value.isEmpty)
//                               {
//                                 return 'Inavlid Password';
//                               }
//                             return null;
//                           },
//                           onSaved: (value)
//                           {
//                             _authData['password']= value;
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                         //width: 200.0,
//                       ),
//                       Container(
//                         child: Button(
//                           text: 'Submit',
//                           textColor: Colors.white,
//                           color: Colors.purple[500],
//                           press: (){
//                             _submit();
//                           },
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
// }
import 'package:care_me/components/button.dart';
import 'package:care_me/models/authentication.dart';
import 'package:care_me/screens/doctor/doctorHome.dart';
import 'package:care_me/screens/patient/patientHome.dart';
import 'package:care_me/screens/signup/background.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  String userRole;


  Future<void> _submit() async {
    try {
      //await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      //return "Signed in";
      await Firebase.initializeApp();
      UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text
      );
      CollectionReference _fireStore = FirebaseFirestore.instance.collection('users');
      _fireStore.doc(auth.currentUser.uid).get().then((value) {
         userRole=value.data()['role'];
         print(userRole);
      });
      if(userRole == 'doctor')
        {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) {
            return DoctorHome();
          }));
          //print("hello");
        }
      else if(userRole == 'patient')
        {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) {
            return PatientHome();
          }));
        }


    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak password')
        {
          print('the weak password');
        }
      else if(e.code == 'email-already-in-use')
        {
          print('email already use');
        }
    } catch (e){
      print(e.toString());
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Container(
              margin: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          focusColor: Colors.indigo[900],
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.indigo[900]
                          ),
                          icon: Icon(
                            Icons.description,
                            color: Colors.black,
                          )
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      obscureText: true,
                      //controller: _passwordController,
                      decoration: InputDecoration(
                        focusColor: Colors.indigo[900],
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.indigo[900]
                        ),
                        icon: Icon(
                          Icons.vpn_key_sharp,
                          color: Colors.black,
                        ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Password';
                        }
                        return null;
                      },
                      controller: _passwordController ,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 200.0,
                  ),
                  Container(
                    child: Button(
                      text: 'Submit',
                      textColor: Colors.white,
                      color: Colors.indigo[900],
                      borderColor: Colors.indigo[900],
                      press: (){
                        _submit();
                      },
                    ),
                  )
                ],
              ),
            )
        ),
      ),

    );
  }
}

