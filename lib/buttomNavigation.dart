import 'package:flutter/material.dart';
import 'package:flutter_cards/core/constant/images.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      // height: 500,
      // width: 300,
      child: Image.asset(AppImages.abc),
      
    ),
    Image.asset(AppImages.abcd),
    SizedBox(height: 80,),
    BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "Hellloo",
          icon: Icon(Icons.dark_mode)),
          BottomNavigationBarItem(
            label: "abc",
            icon: Icon(Icons.g_mobiledata)),
      ])
    ],); 
  }
}
