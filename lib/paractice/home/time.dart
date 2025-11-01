import 'package:flutter/material.dart';
import 'package:todolist/controller/components/textwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  TimeOfDay? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'time=$time', clr: AppColors.CyanColor),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
