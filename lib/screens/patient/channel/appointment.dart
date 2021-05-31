
import 'package:care_me/components/date_picker.dart';
import 'package:care_me/screens/patient/component/appointment_form.dart';
import 'package:care_me/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset(
                    'assets/images/bbbb.svg'),
              ),
            ),
            Column(
              children: [
             Container(
                  child: SafeArea(
                    child:Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                  icon: Icon(
                                    Icons.west_outlined,
                                    color: Colors.indigo,
                                  ),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                ),
                            Container(
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(left: 160.0),

                                  child: Text(
                                    'Dr. S.A Silva',
                                    style: TextStyle(
                                        color: Colors.indigo[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.yellowAccent,
                ),
                margin: EdgeInsets.only( bottom: 100, left: 18, right: 18),

                  child: SingleChildScrollView(
                    child: AppointmentForm(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
