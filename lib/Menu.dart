import 'package:flutter/material.dart';

// ignore: camel_case_types
class menuButtons extends StatefulWidget {

  @override
  _menuButtonsState createState() => _menuButtonsState();
}

// ignore: camel_case_types
class _menuButtonsState extends State<menuButtons> {
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
   String ?selectedLocation;
  @override
  Widget build(BuildContext context) {
    
    String dropdownValue = 'One';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Buttons"),),
          body: Column(
            children: [
              PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      child: ListTile(
                        title: Text('item 1'),
                        leading: Icon(Icons.add),
                      )),
                    PopupMenuItem(
                      child: ListTile(
                        title: Text('item 2'),
                        leading: Icon(Icons.move_to_inbox),
                      ))
                  ],),

               DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: selectedLocation,
            onChanged: (newValue) {
              setState(() {
                selectedLocation = newValue as String?;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
              ],
          ) ,),
      
    );
  }
}