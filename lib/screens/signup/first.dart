// import 'package:care_me/models/authentication.dart';
// import 'package:care_me/screens/welcome.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:provider/provider.dart';
// import 'dart:async';
// import 'package:flutter/services.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//
//       ),
//       home: Test(),
//     );
//   }
// }
//
// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//
//   static const platform = const MethodChannel("com.flutter.care_me/careme");
//
//   Future<void> printy() async{
//     String value;
//     try{
//       value = await platform.invokeMethod("method");
//       print(value);
//     }catch(e){
//       print(e);
//     }
//     //print(value);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: RaisedButton(
//             child: Text('click me'),
//             onPressed: (){
//               printy();
//             },
//           ),
//         )
//     );
//   }
//
// }
