import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';

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
      home:SimpleClass()

      //TimePicker()
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


class TimePicker extends StatefulWidget {
  const TimePicker({super.key});
  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('time=$time'),
      ),
      body:Column(
        children:[
          TextButton(onPressed:()
          async
          {
            TimeOfDay? pickedTime=await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              builder: (context, child){
                  return MediaQuery(
                      data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
                      child: child!);

              }
            );
            if(pickedTime!=null){
              time=pickedTime;
              setState((){});
            }
          },child:Text('Pick Time'))
        ]
      )
    );
  }
}





class SimpleClass extends StatefulWidget {
  const SimpleClass({super.key});

  @override
  State<SimpleClass> createState() => _SimpleClassState();
}

class _SimpleClassState extends State<SimpleClass> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ButtonWidgetColor(onPress: (){
        isSelected=true;
        setState(() {

        });
      },  buttonText: 'Add time', icon: Icons.add,
        buttonColor: isSelected==true?AppColors.CyanColor:AppColors.GreyColor,
        textColor: isSelected==true?Colors.white:AppColors.CyanColor,


      ),),
    );
  }
}


class ButtonWidgetColor extends StatelessWidget {
  String buttonText;
  IconData icon;
  Color buttonColor;
  Color textColor;
  Color iconColor;
  VoidCallback onPress;
   ButtonWidgetColor({super.key, required this.buttonText, required this.icon,
   this.buttonColor= AppColors.GreyColor,
     this.textColor=AppColors.CyanColor,
     this.iconColor=AppColors.CyanColor,
      required this.onPress


   });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor
        ),
        child: Row(children: [
          Icon(icon,color: iconColor,),
          Text(buttonText,style: TextStyle(color:textColor ),)
        ],),
      ),
    );
  }
}




















