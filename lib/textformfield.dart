import 'package:flutter/material.dart';

class TextFormScreen extends StatefulWidget {
  TextFormScreen({Key? key}) : super(key: key);

  @override
  _TextFormScreenState createState() => _TextFormScreenState();
}

class _TextFormScreenState extends State<TextFormScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Text Form Filed'),),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
              initialValue: 'Input text',
              textCapitalization: TextCapitalization.characters,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                labelText: 'Enter correct',
                errorText: 'Error mesage',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.favorite)
                ),
                

            ),
          ),),),
    );
  }
}
