import 'dart:html';

import 'package:care_me/models/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database{
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");
  Future<void> addUser(User user) async{
    try{
      await userCollection.add({
        'name': user.name,
        'email': user.email
      });
    } catch(e){
      print(e);
    }


  }

}