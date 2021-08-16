import 'package:flutter/material.dart';


class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('I  am a snackBar'),
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
    );
  }
}