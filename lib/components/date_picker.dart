import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );

  }
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        print(selectedDate);
      });
  }
}
