import 'package:flutter/material.dart';
import 'package:todolist/controller/components/WHITELARGETEXT.dart';
import 'package:todolist/controller/components/whitesmallwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
class SplashScreenP extends StatelessWidget {
  const SplashScreenP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CyanColor,
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppIcons.Logoimage),
              WhitelargeText(text: 'TodyApp'),
              SizedBox(height: 10,),
              WhitesmallText(text: 'the best to do list application for you'),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                     height: 8,
                       width: 50,
                     decoration:BoxDecoration(
                       color: AppColors.WhiteColor,
                       borderRadius: BorderRadius.circular(10),
                     ),
                   ) ,
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.WhiteColor,
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.WhiteColor,
                    )
                  ],
                ),
              )
            ],
      ),
    );
  }
}
