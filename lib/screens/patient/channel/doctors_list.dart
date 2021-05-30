import 'package:care_me/models/authentication.dart';
import 'package:care_me/screens/patient/channel/appointment.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class DoctorList extends StatefulWidget {
  final String doctor;

  const DoctorList({Key key, this.doctor}) : super(key: key);
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

     dynamic result= await Authentication().display(widget.doctor);
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
    print(widget.doctor);

    return Scaffold(
      body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.only(
                    bottomRight: const Radius.circular(60),
                  ),
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.west_outlined,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(20),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            widget.doctor,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                          ),
                        ],
                      ),


                  ],
                  ),
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.all(15.0),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                itemCount: doctorlist.length,
                itemBuilder: (context, index){
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadowColor: Colors.black,
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/doc.png',
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            doctorlist[index]['name'],
                            style: TextStyle(
                              color: Colors.indigo[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                            color: Colors.lightBlue[100],
                            colorBrightness: Brightness.light,
                            onPressed:(){
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return Appointments();
                               }));
                            },
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: Colors.lightBlue, width: 1)
                            ),
                            child: Text(
                              'Appointment',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          // child: Text(
                          //   doctorlist[index]['specialist'],
                          //   style: TextStyle(
                          //     color: Colors.indigo[900],
                          //     fontSize: 15.0,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
      ),

    );
  }
}

