import 'dart:async';

import 'package:flutter/material.dart';

import 'package:food_delivery/constants.dart';

import 'package:food_delivery/screens/Welcome.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:red ,
     
      
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(
            child: RippleAnimation(
                  color: white,
                  delay: Duration(milliseconds: 500),
                  repeat: true,
                  minRadius: 75,
                  ripplesCount: 6,
                  duration: Duration(milliseconds: 6 * 300),
                  child: CircleAvatar(
                    minRadius: 65,
                    maxRadius: 65,
                    backgroundImage: NetworkImage(forkspoon),
                  ),
                ),
          ),
        ],
      ),
      
    )  ;
  }
}
