import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'food delivery UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[30],
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: Homescreen()
    );
  }
}

