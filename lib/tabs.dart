import 'package:flutter/material.dart';

class tabScreen extends StatefulWidget {
  tabScreen({Key? key}) : super(key: key);

  @override
  _tabScreenState createState() => _tabScreenState();
}

class _tabScreenState extends State<tabScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('tabs'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'dog',icon: Icon(Icons.favorite),),
                Tab(text: 'cat',icon: Icon(Icons.music_note),),
                 Tab(text: 'parrot',icon: Icon(Icons.tv),),
                  Tab(text: 'AC',icon: Icon(Icons.ac_unit),),
              ],),),
              body: TabBarView(
                children: [
                  Center(child: Text('DOGS'),),
                  Center(child: Text('CATS'),),
                   Center(child: Text('Parrot'),),
                    Center(child: Text('Ac'),)
                ],
              ),
              ),
      ),
    );
  }
}
