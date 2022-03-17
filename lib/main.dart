import 'package:flutter/material.dart';
import 'package:loginscreen/screens/forget.dart';
import 'package:loginscreen/screens/userlogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: forgetpage());
  }
}
