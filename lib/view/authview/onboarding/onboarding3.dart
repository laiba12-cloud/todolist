import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/cyantextwidget.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/components/logobutton.dart';
import 'package:todolist/controller/components/textformbutton.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
class OnBoardingthreeScreen extends StatefulWidget {
  const OnBoardingthreeScreen({super.key});

  @override
  State<OnBoardingthreeScreen> createState() => _OnBoardingthreeScreenState();
}

class _OnBoardingthreeScreenState extends State<OnBoardingthreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left:150.0,right: 30),
          child: Row(
            children: [
              BlackTextWidget(text: 'Welcome To'),
              CyanTextWidget(text: 'TodyApp'),
            ],
          ),
        ),
        centerTitle: true,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(child: Image.asset(AppImages.MainImagethree)),
              Padding(
                padding: const EdgeInsets.only(right: 250.0,left: 100),
                child: Image.asset(AppImages.sevenimage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250.0,top: 150),
                child: Image.asset(AppImages.eightimage),
              ),
            ],
          ),

                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.CyanColor,
                      ),
                      child: Center(child: TextFormbuttonwidget(text: 'Continue with email', icon: AppIcons.messagelogo)),
                    )
                  ),
                  SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 1,
                width: 150,
                decoration:BoxDecoration(
                  color: AppColors.BlackColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              BlackTextWidget(text: 'or Continue with'),
              Container(
                height: 1,
                width: 150,
                decoration:BoxDecoration(
                  color: AppColors.BlackColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LogoButton(text: 'facebook', icon: AppIcons.fblogo),
              LogoButton(text: 'Google', icon: AppIcons.googleimage)
            ],
          ),
                ],
              ),
    );
  }
}
