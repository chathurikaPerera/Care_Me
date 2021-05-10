import 'package:care_me/screens/patient/channel/doctors_list.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String name;
  final String image;


  Category({
    Key key,
    this.name,
    this.image,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
               ),
            color: Colors.white, //amber[colorCodes[index]],
             elevation: 7,
            shadowColor: Colors.black,
            margin: EdgeInsets.only(bottom: 20),
            child: Padding(
              //child: Text('Entry ${names[index]}')
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DoctorList();
                    }));
                  },

                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        image,
                        height: 60,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                            name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.indigo[900],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          );
  }
}
