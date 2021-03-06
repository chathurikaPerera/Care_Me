import 'package:care_me/models/authentication.dart';
import 'screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
            ChangeNotifierProvider.value(
              value: Authentication(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: welcome(),
        ),
      );
  }
}
