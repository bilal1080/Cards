import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavRail extends StatefulWidget {
  //HomeScreen({Key key}) : super(key: key);

  @override
  _NavRailState createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  
  int _selectedIndex = 0;
  

  NavigationRailDestination textDestination(
      String text,) {
    return NavigationRailDestination(
      icon: SizedBox.shrink(),
      label: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(text),
        ),
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              minWidth: 55.0,
              
              backgroundColor: Colors.blueGrey,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.all,
              leading: Column(
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 22,
                      child: Icon(Icons.add),
                      //backgroundColor: Colors.redAccent,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  RotatedBox(
                    quarterTurns: -1,
                    child: Icon(Icons.dashboard,color: Color(0xffFCCFA8),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RotatedBox(
                    quarterTurns: -1,
                    child: Icon(Icons.date_range),

                  )
                ],
              ),
              selectedLabelTextStyle: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 14,
                letterSpacing: 1,
                decorationThickness: 2.0,
              ),
              unselectedLabelTextStyle: TextStyle(
                fontSize: 13,
                letterSpacing: 0.8,
              ),
              destinations: [
                textDestination("Trending",),
                textDestination("Latest",),
               
              ],
            ),
           // Details(_selectedIndex)
          ],
        ),
      ),
    );
  }
}