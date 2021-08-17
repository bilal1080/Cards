import 'dart:developer';

import 'package:flutter/material.dart';

class timePicker extends StatefulWidget {
  timePicker({Key? key}) : super(key: key);

  @override
  _timePickerState createState() => _timePickerState();
}

class _timePickerState extends State<timePicker> {
  @override
  Widget build(BuildContext context) {
    return MyhomeScreen();
  }
}

class MyhomeScreen extends StatefulWidget {
  MyhomeScreen({Key? key}) : super(key: key);

  @override
  _MyhomeScreenState createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  late TimeOfDay time;
  //late TimeOfDay picked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    final picked = await showTimePicker(context: context, initialTime: time);

    if (picked != null) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time Picker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    selectTime(context);
                  },
                  child: Text('Edit Time')),
              Text('Time is : ${time.hour}: ${time.minute}'),
            ],
          ),
        ),
      ),
    );
  }
}
