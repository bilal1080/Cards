import 'package:flutter/material.dart';
import 'package:flutter_cards/Dialog.dart';

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
      home: DialogBox(),
    );
  }
}
