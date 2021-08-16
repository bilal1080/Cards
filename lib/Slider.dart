import 'package:flutter/material.dart';

class slidDer extends StatefulWidget {
  @override
  _slidDerState createState() => _slidDerState();
}

class _slidDerState extends State<slidDer> {
  double _slidervalue = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slider"),
        ),
        body: Center(
          child: Column(
            children: [
              Slider(
                  value: _slidervalue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _slidervalue = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
