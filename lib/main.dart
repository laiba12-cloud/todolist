import 'package:flutter/material.dart';
import 'package:todolist/view/authview/loginscreen.dart';
import 'package:todolist/view/authview/onboarding/onboarding1.dart';
import 'package:todolist/view/authview/onboarding/onboarding2.dart';
import 'package:todolist/view/authview/onboarding/onboarding3.dart';
import 'package:todolist/view/authview/signupscreen.dart';
import 'package:todolist/view/homeview/bottom-nav-screen.dart';
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
      home:DatePickerClass()
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



class DatePickerClass extends StatefulWidget {
  const DatePickerClass({super.key});

  @override
  State<DatePickerClass> createState() => _DatePickerClassState();
}

class _DatePickerClassState extends State<DatePickerClass> {
  
  
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date=$date'),),
      body: Center(child: TextButton(onPressed: ()
      async //---asynchronous--
      {
        //class   object ----> all access of the given class---
        DateTime? pickedDate= await showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime(2030));
        if(pickedDate!=null){
          date=pickedDate;
          setState(() {
            
          });
        }
      }, child: Text('Date pick')),),
    );
  }
}
