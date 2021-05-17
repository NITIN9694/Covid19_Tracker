import 'dart:ui';

import 'package:covid19/Data/Api.dart';
import 'package:covid19/Widget/Indiadata.dart';
import 'package:covid19/Widget/State.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.indigo[900],
     body:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/images/virus.png"))
             ),
              child: Image.asset("assets/images/map.png",fit: BoxFit.cover,color:Colors.white,height:MediaQuery.of(context).size.height*0.2,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: Container(
              height: size.height*1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight:  Radius.circular(50),
                )
              ),
              child:  Stack(
                children: [
                  IndiaData(),
                 Padding(
                   padding: const EdgeInsets.only(top:300.0),
                   child: Statte(),
                 )
                ],
              ),
            ),
          ),
        ],
    ),
     
    );
    }
}