import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/paractice/onboarding/onboard2.dart';
import 'package:todolist/paractice/splashscreen.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreenP()
      //OnBoard2(), // You can change this to SplashScreen() or OnBoard1()
    );
  }
}

//--------------------------------------------------
// DATE PICKER CLASS
//--------------------------------------------------
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
      appBar: AppBar(title: Text('Date = $date')),
      body: Center(
        child: TextButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2030),
            );
            if (pickedDate != null) {
              setState(() {
                date = pickedDate;
              });
            }
          },
          child: const Text('Pick Date'),
        ),
      ),
    );
  }
}

//--------------------------------------------------
// TIME PICKER CLASS
//--------------------------------------------------
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
      appBar: AppBar(title: Text('Time = $time')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(alwaysUse24HourFormat: false),
                    child: child!,
                  );
                },
              );
              if (pickedTime != null) {
                setState(() {
                  time = pickedTime;
                });
              }
            },
            child: const Text('Pick Time'),
          )
        ],
      ),
    );
  }
}

//--------------------------------------------------
// SIMPLE CLASS WITH BUTTON
//--------------------------------------------------
class SimpleClass extends StatefulWidget {
  const SimpleClass({super.key});

  @override
  State<SimpleClass> createState() => _SimpleClassState();
}

class _SimpleClassState extends State<SimpleClass> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonWidgetColor(
          onPress: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          buttonText: 'Add Time',
          icon: Icons.add,
          buttonColor:
          isSelected ? AppColors.CyanColor : AppColors.GreyColor,
          textColor: isSelected ? Colors.white : AppColors.CyanColor,
        ),
      ),
    );
  }
}

//--------------------------------------------------
// BUTTON WIDGET
//--------------------------------------------------
class ButtonWidgetColor extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final VoidCallback onPress;

  const ButtonWidgetColor({
    super.key,
    required this.buttonText,
    required this.icon,
    required this.onPress,
    this.buttonColor = AppColors.GreyColor,
    this.textColor = AppColors.CyanColor,
    this.iconColor = AppColors.CyanColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(width: 8),
            Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
