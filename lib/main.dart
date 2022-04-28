import 'package:flutter/material.dart';
//import 'package:instaapp/src/features/feature1/presentation/HomePage.dart';
import 'package:instaapp/src/features/feature1/presentation/NavBar.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta app',
      home: NavBar( ),
    );
  }
}

