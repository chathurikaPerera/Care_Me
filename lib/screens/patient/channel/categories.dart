import 'package:care_me/screens/patient/channel/catergory.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  final List<String> names = <String>['hello','am','chathu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3
          ),
        ),

      ),
      //backgroundColor: Colors.indigo[900],
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30, bottom: 10,left: 10,right: 10),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children : <Widget>[
                Category(
                  name: 'Physiology Specialist' ,
                  image: 'assets/images/category/body.png',
                ),
                Category(
                  name: 'Pediatrics Specialist' ,
                  image: 'assets/images/category/child.png',
                ),
                Category(
                  name: 'Child Neuro Specialist' ,
                  image: 'assets/images/report.png',
                ),
                Category(
                  name: 'Child Cardiology Specialist' ,
                  image: 'assets/images/category/heart.png',
                ),
                Category(
                  name: 'Specialist in Child Surgery' ,
                  image: 'assets/images/category/surgery.png',
                ),
                Category(
                  name: 'Obstetrician and Gynecology' ,
                  image: 'assets/images/category/pregnant.png',
                ),
                Category(
                  name: 'Obstetrician and Gynecology' ,
                  image: 'assets/images/category/pregnant.png',
                ),
                Category(
                  name: 'Obstetrician and Gynecology' ,
                  image: 'assets/images/category/pregnant.png',
                ),

              //itemCount: 4,//names.length,//entries.length,
             // itemBuilder: (BuildContext context, int index) {
            //     Card(
            //       //height: 50,
            //       color: Colors.white, //amber[colorCodes[index]],
            //       child: Padding(
            //           //child: Text('Entry ${names[index]}')
            //         padding: EdgeInsets.all(20),
            //           child: Row(
            //             children: <Widget>[
            //               Image.asset(
            //                 'assets/images/pills.png',
            //                 height: 60,
            //               ),
            //               Container(
            //                 margin: EdgeInsets.only(left: 10),
            //                 child: Text(
            //                   'Physiology Specialist Medical Services'
            //                 ),
            //
            //               )
            //
            //             ],
            //           )
            //       ),
            // ),
            ],
            ),
                //}
          ),
      ),
      );
  }
}
