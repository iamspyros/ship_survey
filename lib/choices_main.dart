import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import './choices_builder.dart';
import '../features_header.dart';
import '../keep_alive.dart';
import 'Inspection.dart';
import 'package:flutter/cupertino.dart';

class FeaturesChoices extends StatelessWidget {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Scrollbar(
      controller: scrollController,
      child: ListView(
        controller: scrollController,
        addAutomaticKeepAlives: true,
        children: <Widget>[
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Date of Inspection'),
              content: SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime(2023, 8, 8),
                onDateTimeChanged: (DateTime newDateTime) {
                  // Do something
                },
              ),
            ),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Vessel Details'),
              content: FeaturesChoicesBuilder(),
            ),
          ),
          ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InspectionPage()),
    );
  },
  child: Text(
    'Continue to Inspection',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  ),
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 13, 61, 101),
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    elevation: 5,
    shadowColor: Colors.black.withOpacity(0.5),
    animationDuration: Duration(milliseconds: 300),
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    minimumSize: Size(200, 50),
    side: BorderSide(
      color: Colors.white,
      width: 2,
    ),
  ),
)
        ],
      ),
    ))));
  }
}
