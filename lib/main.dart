import 'package:flutter/material.dart';
import 'package:flutter_cards/switch.dart';

//import 'package:flutter_cards/Menu.dart';
//import 'package:flutter_cards/Navigation_rail.dart';
//import 'package:flutter_cards/Slider.dart';
//import 'package:flutter_cards/homescreen.dart';
//import 'package:flutter_cards/progress_indicator.dart';
//import 'package:flutter_cards/snackbar.dart';
//import 'package:flutter_cards/splash.dart';
//import 'package:flutter_cards/Dialog.dart';
//import 'package:flutter_cards/chips.dart';
//import 'package:flutter_cards/Button.dart';
//import 'package:flutter_cards/buttomNavigation.dart';
//import 'package:flutter_cards/date_picker.dart';
//import 'package:flutter_cards/homescreen.dart';
//import 'package:flutter_cards/navigation_drawer.dart';
//import 'package:flutter_cards/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeClass(),
    );
  }
}
