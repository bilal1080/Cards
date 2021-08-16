import 'package:flutter/material.dart';
import 'package:flutter_cards/Dialog.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

// class SplashScren extends StatefulWidget {
//   @override
//   _SplashScrenState createState() => _SplashScrenState();
// }

// class _SplashScrenState extends State<SplashScren> {
//   @override
//   void initState() {
//     super.initState();
//     _navigatetohome();
//   }

//   _navigatetohome() async {
//     await Future.delayed(Duration(microseconds: 1500), () {});
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => DialogBox()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Hello From Splash Screen"),
//       ),
//     );
//   }
// }

class Ani_splsh_screen extends StatefulWidget {
  Ani_splsh_screen({Key? key}) : super(key: key);

  @override
  _Ani_splsh_screenState createState() => _Ani_splsh_screenState();
}

class _Ani_splsh_screenState extends State<Ani_splsh_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 1500,
          splash: Icons.home,
          nextScreen: DialogBox(),
          splashTransition: SplashTransition.fadeTransition,
         // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.blue
        )
    );
  }
}
