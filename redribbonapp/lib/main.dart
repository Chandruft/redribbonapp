import 'package:flutter/material.dart';
import 'package:redribbonapp/screens/home.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:redribbonapp/screens/home2.dart';
import 'package:redribbonapp/screens/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

