import 'package:flutter/material.dart';
import 'package:todolist/controller/components/container.dart';
import 'package:todolist/controller/components/containerwidget.dart';
import 'package:todolist/controller/components/textwidget.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
import 'package:todolist/main.dart';

import '../../controller/utills/appcolors.dart';
class TimeandDate extends StatefulWidget {
 const TimeandDate({super.key});

  @override
  State<TimeandDate> createState() => _TimeandDateState();
}

class _TimeandDateState extends State<TimeandDate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: TextWidget(txt: 'Show Time and date',  clr: AppColors.GreyColor,),
      ),
      body:Center(child:
          Column(
            children: [
              ContainerWidget2(text: 'Add Time', color:AppColors.GreyColor, ontap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TimePicker()));
              }, icon: AppIcons.pluslogo),
            ContainerWidget2(text: 'ReSchedule', color:AppColors.CyanColor, ontap:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DatePickerClass()));
            }, icon: AppIcons.timerlogo)
            ],
          )
      ),
    );
  }
}
