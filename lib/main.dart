import 'package:covid19/Data/Api.dart';
import 'package:covid19/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        backgroundColor:kPrimaryColor
      ),
      home:HomeScreen(),
    );
  }
}

