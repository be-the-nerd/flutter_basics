import 'package:flutter/material.dart';
import 'package:flutter_basics/stepper.dart';
// import 'package:flutter_basics/datePicker.dart';
// import 'package:flutter_basics/timepicker.dart';
// import 'package:flutter_basics/tabBar.dart';
// import 'package:flutter_basics/dropDown.dart';
// import 'package:flutter_basics/animatedDialog.dart';
// import 'package:flutter_basics/bottomSheet.dart';
// import 'package:flutter_basics/navigationDrawer.dart';
// import 'package:flutter_basics/bottomTabs.dart';
// import 'package:flutter_basics/displayImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true,
        // home: BottomTabs());
        // home: DisplayImage());
        // home: NavDrawer());
        // home: DemoBottomSheet());
        // home: DemoAnimatedDialog());
        // home: DemoDropDown());
        // home: DemoTabBar());
        // home: DemoTimePicker());
        // home: DemoDatePicker());
        home: DemoStepper());
  }
}
