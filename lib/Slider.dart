import 'package:flutter/material.dart';


// ignore: camel_case_types
class slidDer extends StatefulWidget {
  @override
  _slidDerState createState() => _slidDerState();
}

// ignore: camel_case_types
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
                  }),
              ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                
              },
            ),
          );

          
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),

            ],
          ),
        ),
      ),
    );
  }
}
