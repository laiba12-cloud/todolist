import 'package:flutter/material.dart';
import 'package:todolist/view/authview/loginscreen.dart';
import 'package:todolist/view/authview/onboarding/onboarding1.dart';
import 'package:todolist/view/authview/onboarding/onboarding2.dart';
import 'package:todolist/view/authview/onboarding/onboarding3.dart';
import 'package:todolist/view/authview/signupscreen.dart';
import 'package:todolist/view/homeview/choosethemes.dart';
import 'package:todolist/view/homeview/create%20task.dart';
import 'package:todolist/view/startingview/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CreateTask()
      //ThemeScreen()
      //OnBoardingthreeScreen()
      //OnBoardingtwoScreen()
      //OnBoardingoneScreen()
      //SplashScreen()
      //LoginScreen()
      //SplashScreen(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
