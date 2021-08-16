import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Diaglog Box"),),
        body: Column(
            children: [
              AlertDialog(
            title: Text("Do you want to access the data"),
            actions: [
              ElevatedButton(
                onPressed: (){}, 
                child: Text("Cancel"),),
                ElevatedButton(onPressed: (){}, 
                child:Text("Ok"),)
            ],),
            SimpleDialog(
              title: Text("Which account to add?"),
              children: [
               SimpleDialogOption(
                 child: Text("1234@gamil.com"),
               ),
               Divider(
                indent: 16,
                 endIndent: 16,
              ),
                SimpleDialogOption(
                 child: Text("abcgd@gmail.com"),
               )
              ],
            ),
            ],
          ),
        ),
    );
  }
}
