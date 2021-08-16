import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer")),
      body:  Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
       
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
               
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: const Text('Item 3'),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}