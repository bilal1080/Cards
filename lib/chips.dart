import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Chips Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Chips Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              InputChip(
                label: Text("add item"),
                backgroundColor: Colors.blue,
                avatar: Icon(Icons.add),
                ),
                ChoiceChip(
              label: Text('Choice 1'),
              selected: true,
            ),
            ChoiceChip(
              label: Text('Choice 2'),
              selected: false,
            ),
             FilterChip(
              label: Text('Filter 3'),
              selected: true,
              onSelected: (bool value) {},
            ),
            FilterChip(
              label: Text('Filter 4'),
              onSelected: (bool value) {},
            ),
            ],),
        )
      ),
    );
  }
}
