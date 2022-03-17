import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: fghfh(),
    );
  }
}

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/images/vi.png',
      ),
      nextScreen: splash_screen(),
      splashIconSize: 250,
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Color.fromARGB(255, 247, 141, 3),
      duration: 8000000,
    );
  }
}

class fghfh extends StatefulWidget {
  const fghfh({Key? key}) : super(key: key);

  @override
  State<fghfh> createState() => _fghfhState();
}

class _fghfhState extends State<fghfh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("jfkldjg"),
    );
  }
}
