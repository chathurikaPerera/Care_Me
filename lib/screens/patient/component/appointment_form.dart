import 'package:flutter/material.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
          //key: _formkey,
          child:Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0,),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.lightBlue,
                    ),
                  ),
                  //padding: EdgeInsets.only(top: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //controller: _name,
                      decoration: InputDecoration(
                        //focusColor: Colors.white,
                        border: InputBorder.none,
                        //contentPadding: EdgeInsets.only(top:14),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Name';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.indigo),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.lightBlue,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        //focusColor: Colors.indigo[900],
                        hintText: 'Date',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                      //controller: _email,
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.lightBlue,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          //focusColor: Colors.indigo[900],
                            hintText: 'Time',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.indigo
                            ),
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text('6am-8am'),
                            value: '6am-8am',
                          ),
                          DropdownMenuItem(
                            child: Text('4pm-8pm'),
                            value: '4pm-8pm',
                          )

                        ],
                        onChanged: (value) {
                          //_userRole = value;
                        }

                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.lightBlue,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
              ],
            ),
          ),
        ),
    );
  }
}
