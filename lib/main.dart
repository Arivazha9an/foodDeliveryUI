import 'package:flutter/material.dart';

import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/authscreens/signin.dart';
import 'package:food_delivery/screens/authscreens/signup.dart';

import 'package:food_delivery/screens/home/main_home2.dart';
import 'package:food_delivery/screens/home/mainpage.dart';
import 'package:food_delivery/screens/restaurant/pizza/about.dart';
import 'package:food_delivery/screens/restaurant/pizza/pizza.dart';
import 'package:food_delivery/screens/restaurant/pizza/pizzaOverview.dart';
import 'package:food_delivery/screens/restaurant/restaurant.dart';
import 'package:food_delivery/splashScreen/SplashScreen.dart';
import 'package:food_delivery/widgets/addresscard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:
          //const Restaurant()
          //Signin()
         const MyHomePage(),
        
       //  MainHome2()
      //  MapScreen()
      // AboutPizza()
      //Pizzaoverview()

      //MainScreen()
      //  Mainpage()
      //SignUp()
    );
  }
}
