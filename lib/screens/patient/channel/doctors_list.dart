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
      appBar: AppBar(

      ),
      body: Container(
        // child: ListView.builder(
        //   //scrollDirection: Axis.horizontal,
        //   itemCount: doctorlist.length,
        //   itemBuilder: (context, index){
        //     return Container(
        //       width: 150,
        //       child: Card(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(15),
        //         ),
        //         shadowColor: Colors.black,
        //         color: Colors.white,
        //         elevation: 10,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             Image.asset(
        //               'assets/images/doc.png',
        //               height: 60,
        //             ),
        //             Text(
        //               doctorlist[index]['name'],
        //               style: TextStyle(
        //                 color: Colors.indigo[900],
        //                 fontSize: 15.0,
        //               ),
        //             ),
        //             Text(
        //               doctorlist[index]['specialist'],
        //               style: TextStyle(
        //                 color: Colors.indigo[900],
        //                 fontSize: 15.0,
        //               ),
        //             ),
        child:GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
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
                             Text(
                              doctorlist[index]['name'],
                              style: TextStyle(
                                 color: Colors.indigo[900],
                                 fontSize: 15.0,
                               ),
                              ),
                             Text(
                            doctorlist[index]['specialist'],
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 15.0,
                            ),
                          ),
                          ],
                          ),
                        );
                      },
                    )

                 // ],
                ),
                // child: ListTile(
                //   title: Text(doctorlist[index]['name']),
                //   subtitle: Text(doctorlist[index]['specialist']),
                //   leading: CircleAvatar(
                //     child: Image(
                //       image: AssetImage(
                //         'assets/images/doc.png',
                //       ),
                //     ),
                //   ),
                // ),
              //),
            );
          //},
        //),

    //  ),
    //);
  }
}

