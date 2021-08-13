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
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF6200EE),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Favorites'),
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          title: Text('Music'),
          icon: Icon(Icons.music_note),
        ),
        BottomNavigationBarItem(
          title: Text('Places'),
          icon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          title: Text('News'),
          icon: Icon(Icons.library_books),
        ),
      ],
    ),
    ],); 
  }
}
