import 'package:flutter/material.dart';
import 'package:flutter_cards/core/constant/images.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.ad_units)),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
          
        ),),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add),),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.dangerous)
          ],
          backgroundColor: Colors.grey,
        ),
        body: ListView(padding: EdgeInsets.all(4.0), 
        children: <Widget>[
         MaterialBanner(
           content: Text("Error is occured") , 
           leading: CircleAvatar(child: Icon(Icons.delete),),
           actions: [
             ElevatedButton(onPressed: (){}, 
             
             child: Text("oka")),
             ElevatedButton(onPressed: (){}, 
             child: Text("Cancel"),
             )

           ])
          
        ]
        )
        );
  }

  
}
