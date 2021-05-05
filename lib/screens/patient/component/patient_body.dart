
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
                height: MediaQuery.of(context).size.height * 0.4,
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
                      bottomLeft: const Radius.circular(36),
                      bottomRight: const Radius.circular(36),
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
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              crossAxisCount: 2,
              padding: EdgeInsets.all(15),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.indigo[900]
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/doc.png',
                        height: 80,
                      ),
                      Text(
                        'hello'
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.indigo[900]
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/pills.png',
                        height: 80,
                      ),
                      Text(
                          'hello'
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.indigo[900]
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/report.png',
                        height: 80,
                      ),
                      Text(
                          'hello'
                      )
                    ],
                  ),
                ),
                Container(
                  child:Text(
                    'hello',
                  ),
                  color: Colors.yellowAccent,
                ),
                Container(
                  child:Text(
                    'hello',
                  ),
                  color: Colors.yellowAccent,
                ),
                Container(
                  child:Text(
                    'hello',
                  ),
                  color: Colors.yellowAccent,
                )
              ],
            ),
          )
        ],
        ),
    );
  }
}
