import 'package:care_me/models/authentication.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  List doctorlist = [];

  @override
  void initState(){
    super.initState();
    fetchData();
  }
  fetchData() async{
     dynamic result= await Authentication().display();
      if(result == null)
        {
          print("unable to load");
        }
      else{
        setState(() {
          doctorlist = result;
        });
      }

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: doctorlist.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(doctorlist[index]['name']),
                subtitle: Text(doctorlist[index]['specialist']),
              ),
            );
          },
        ),

      ),
    );
  }
}

