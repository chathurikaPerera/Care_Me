
import 'package:care_me/screens/patient/channel/categories.dart';
import 'package:care_me/screens/patient/component/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //margin: EdgeInsets.only(bottom: 10.0),
            child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/new2.png',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  ),
                  borderRadius: BorderRadius.only(
                      //bottomLeft: const Radius.circular(36),
                      bottomRight: const Radius.circular(80),
                    ),
                  ),
               ),
              Container(
                height: 170,
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Care Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
              ),
                Container(
                  height: 200,
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Advance of healthcare through the mobile',
                    style: TextStyle(
                       color: Colors.white,
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                      onPressed: (){
                        Scaffold.of(context).openDrawer();
                      },
                    )
                  ],
                ),
              )
            ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Container(
              //color: Colors.indigo,
              padding: EdgeInsets.only(left: 30,top: 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ),
          ),

                Container(
                  margin: EdgeInsets.only(top: 0),
                  height: 150,
                  //color: Colors.yellowAccent,
                  //child: Expanded(
                    child: ListView(
                      //primary: false,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadowColor: Colors.black,
                            color: Colors.white,
                            elevation: 10,
                            margin: EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Categories();
                                }));
                              },
                              //hoverColor: Colors.indigo[900],
                              //focusColor: Colors.red,
                              highlightColor: Colors.indigo[900],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/doc.png',
                                    height: 60,
                                  ),
                                  Text(
                                      'Doctors',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 10),
                            elevation: 10.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Categories();
                                }));
                              },
                              //hoverColor: Colors.indigo[900],
                              //focusColor: Colors.red,
                              highlightColor: Colors.indigo[900],

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/pills.png',
                                    height: 60,
                                  ),
                                  Text(
                                    'Prescriptions',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 10),
                            elevation: 10.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Categories();
                                }));
                              },
                              //hoverColor: Colors.indigo[900],
                              //focusColor: Colors.red,
                              highlightColor: Colors.indigo[900],

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/report.png',
                                    height: 60,
                                  ),
                                  Text(
                                    'Doctors',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 10),
                            elevation: 10.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Categories();
                                }));
                              },
                              //hoverColor: Colors.indigo[900],
                              //focusColor: Colors.red,
                              highlightColor: Colors.indigo[900],

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/pills.png',
                                    height: 60,
                                  ),
                                  Text(
                                    'Doctors',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
            Container(
              height: MediaQuery.of(context).size.height/3 + 20,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              //color: Colors.yellowAccent,
              child: Stack(
                children: <Widget>[
                 Container(
                   height: MediaQuery.of(context).size.height/3,
                   width: MediaQuery.of(context).size.width,
                     //padding: EdgeInsets.all(20),
                   //alignment: Alignment.center,
                   margin: EdgeInsets.only(top: 70,left: 15,right: 15),
                   decoration: BoxDecoration(
                     color: Colors.indigo[900],
                     borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(20),
                        bottomRight: const Radius.circular(20),
                        topLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                      ),
                     ),
                 ),
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 0),
                    child: Image.asset(
                      'assets/images/well4.png',
                      height: 350,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Container(
                         margin: EdgeInsets.only(top: 150, left:30),
                         height: 300,
                         child: Column(
                           children: <Widget>[
                           Text(
                             'Treatment from the',
                             style: TextStyle(
                               color: Colors.lightBlue,
                              letterSpacing: 2,
                               fontSize: 15

                             ),
                           ),
                             Text(
                               'best specialist',
                               style: TextStyle(
                                   color: Colors.lightBlue,
                                 letterSpacing: 2,
                                 fontSize: 15,
                               ),
                             ),
                             Text(
                               'from around the',
                               style: TextStyle(
                                   color: Colors.white,
                                 letterSpacing: 2,
                                 fontSize: 15,
                               ),
                             ),
                             Text(
                               'sri lanka',
                               style: TextStyle(
                                   color: Colors.white,
                                 letterSpacing: 2,
                                 fontSize: 14
                               ),
                             ),

                           ],
                         ),
                       ),

                       // Container(
                       //   margin: EdgeInsets.only(left: 30, top: 70),
                       //    alignment: Alignment.center,
                       //    width: 90,
                       //    child: Text(
                       //       'Treatment from the best specialists from the Sri Lanka',
                       //    ),
                       // ),
                  ],
                ),
            ),
                ],
              ),
    );
  }
}
