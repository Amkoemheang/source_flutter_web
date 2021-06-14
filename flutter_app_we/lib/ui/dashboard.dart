import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  DateTime dateTime = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime? dataTimeOne = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1940),
        lastDate: DateTime(2030),
        helpText: "Select booking date.",
        cancelText: "Not now",
        confirmText: "Book",
        fieldLabelText: "Booking date",
        fieldHintText: "Month/Date/Year",
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter date in valid range',

    );
    if (dataTimeOne != null && dataTimeOne != dateTime) {
      setState(() {
        dateTime = dataTimeOne;
        print("Information dateTime ${dateTime.toString()}");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.white70,
                height: 50.0,
                onPressed: () {
                  selectTimePicker(context);
                },
                child: Text("Show date picker "),
              ),
              SizedBox(height: 50.0,),
              Text("Date: ${dateTime.day}-${dateTime.month}-${dateTime.year}"),
            ],
          ),
        ),
      ),
    );
  }
}
