import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text("Buttons"),
           backgroundColor: Colors.lime ,),
         body: Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: <Widget>[
                 TextButton(onPressed: (){}, 
                 child: Text("Text Button"),
                 ),
                 SizedBox(height: 10.0,),
                 FloatingActionButton(onPressed: (){},
                 child: Icon(Icons.add),
                 backgroundColor: Colors.grey,
                 ),
                 SizedBox(height: 10.0,),
                Checkbox(
      checkColor: Colors.white,
     // fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    ),
               ],),
           ),
         ),
       
    );
  }
}
