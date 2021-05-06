
import 'package:care_me/screens/patient/channel/categories.dart';
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
            margin: EdgeInsets.only(bottom: 10.0),
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
                      onPressed: (){},
                    )
                  ],
                ),
              )
            ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              primary: false,
              crossAxisCount: 2,
              padding: EdgeInsets.all(15),
              children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadowColor: Colors.black,
                    color: Colors.white,
                    elevation: 10,
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
                            height: 80,
                          ),
                          Text(
                              'Doctors',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                   ),
                     color: Colors.white,
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
                          height: 80,
                        ),
                        Text(
                          'Doctors',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.indigo[900],
                  elevation: 10.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/report.png',
                        height: 80,
                      ),
                      Text(
                        'Lab Report',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.indigo[900],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/doc.png',
                        height: 80,
                      ),
                      Text(
                        'Lab Report',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
        ),
    );
  }
}
