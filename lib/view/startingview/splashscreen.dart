import 'package:flutter/material.dart';
import 'package:todolist/controller/components/WHITELARGETEXT.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/whitesmallwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CyanColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(200),
            child: Image.asset(AppIcons.Logoimage),
          ),
          Padding(
            padding: const EdgeInsets.all(300),
            child: WhitelargeText(text: 'Todyapp'),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(250.0),
            child: WhitesmallText(text: 'The best to do list application for you'),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.CyanColor,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.CyanColor,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
