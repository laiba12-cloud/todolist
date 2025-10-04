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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset(AppIcons.Logoimage),

          WhitelargeText(text: 'Todyapp'),

            SizedBox(height: 10,),
            WhitesmallText(text: 'The best to do list application for you'),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                height: 12,
                width: 35,
                color:Color(0xffCBF1F0),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor:Color(0xffCBF1F0),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xffCBF1F0),
              ),
            ],),
          // Spacer(),
          ],
        ),
      ),
    );
  }
}
