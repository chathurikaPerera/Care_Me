import 'package:care_me/components/button.dart';
import 'package:care_me/models/authentication.dart';
import 'package:care_me/screens/doctor/doctorHome.dart';
import 'package:care_me/screens/patient/patientHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  String _userRole;
  bool _state;
  final GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _role = new TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<bool> _submit() async{
   try {
     print(_name.text);
     print(_email.text);
     //await Firebase.initializeApp();
     UserCredential user = await FirebaseAuth.instance
         .createUserWithEmailAndPassword(
         email: _email.text,
         password: _passwordController.text
     );
     if(FirebaseAuth.instance.currentUser != null)
       {
         // Provider.of<Authentication>(context, listen: false).addUser(
         //   _name.text.trim(),
         //   _email.text.trim(),
         //   _userRole.trim(),
         // );
         CollectionReference user = FirebaseFirestore.instance.collection('users');
         String uid = auth.currentUser.uid.toString();
         // user.add({
         //   "displayName" : displayName,
         //   "id" : uid,
         //   "email": email
         // });
         try{
           await user.doc(uid).set({
             'displayName' : _name.text.trim(),
             'email' : _email.text.trim(),
             'role' : _userRole.trim(),
             'id' : uid,
           });
           if(_userRole == 'doctor')
           {
             await Navigator.push(context, MaterialPageRoute(builder: (context){
               return DoctorHome();
              }));
           }
           else {
             await Navigator.push(
                 context, MaterialPageRoute(builder: (context) {
               return PatientHome();
             }));
           }
         } catch(e){
           return e;
         }
       }
     else{
       print('you already have account');
     }

   }catch (e){
     print(e.toString());
   }
   return true;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
               child:Container(
                margin: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 70, bottom: 40),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        controller: _name,
                        decoration: InputDecoration(
                          //focusColor: Colors.white,
                          border: InputBorder.none,
                          //contentPadding: EdgeInsets.only(top:14),
                          hintText: 'Name',
                          prefixIcon: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white70,
                          ),
                          hintStyle: TextStyle(
                              color: Colors.white70,
                          ),
                        ),
                        cursorHeight: 25.0,
                        validator: (value){
                          if(value.isEmpty)
                            {
                              return 'Invalid Name';
                            }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        //maxLines: 2,
                        decoration: InputDecoration(
                          //focusColor: Colors.indigo[900],
                          hintText: 'Email',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.white70,
                          ),
                          prefixIcon: Icon(
                            Icons.description,
                            color: Colors.white70,
                          ),
                        ),
                        cursorHeight: 25.0,
                        validator: (value){
                          if(value.isEmpty)
                          {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                        controller: _email,
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            //focusColor: Colors.indigo[900],
                            hintText: 'Role',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                            prefixIcon: Icon(
                              Icons.description,
                              color: Colors.white70,
                            )

                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text('Patient'),
                            value: 'patient',
                          ),
                          DropdownMenuItem(
                            child: Text('Doctor'),
                            value: 'doctor',
                          )

                        ],
                          onChanged: (value) {
                            _userRole = value;
                          }

                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      //padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.white70,
                          ),
                            prefixIcon: Icon(
                              Icons.vpn_key_sharp,
                              color: Colors.white70,
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
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //padding: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          //focusColor: Colors.indigo[900],
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              color: Colors.white70,
                          ),
                          prefixIcon: Icon(
                            Icons.vpn_key_sharp,
                            color: Colors.white70,
                          ),
                        ),
                        cursorHeight: 25.0,
                        validator: (value){
                          if(value.isEmpty || value != _passwordController.text )
                          {
                            return 'Invalid Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 200.0,
                    ),
                    Container(
                      child: Button(
                        text: 'SUBMIT',
                        textColor: Colors.indigo[900],
                        color: Colors.white,
                        borderColor: Colors.indigo[900],
                        press: (){
                          _submit();
                          if(_submit() == true)
                            {
                              print('login page');
                            }
                        },
                      ),
                    )
                  ],
                ),
              ),
        ),
      ),

    );
  }
}
