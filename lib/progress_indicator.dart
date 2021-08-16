import 'package:flutter/material.dart';

class ProgIndicator extends StatefulWidget {
 

  @override
  _ProgIndicatorState createState() => _ProgIndicatorState();
}

class _ProgIndicatorState extends State<ProgIndicator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Progress indicator"),
        ),
        body: Center(
          child:CircularProgressIndicator(), 
          //LinearProgressIndicator(),
        ),
        ),
    );
    
  }
}
