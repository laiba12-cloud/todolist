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
        centerTitle: true,
        title: Row(
          children: [
            BlackTextWidget(text: 'Welcome To'),
            CyanTextWidget(text: 'TodyApp'),
          ],
        ),

      ),
      body: Column(
        children: [
          Expanded(
              flex: 50,
              child:Stack(
                children: [
                  Center(child: Image.asset(AppImages.MainImagethree)),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: Image.asset(AppImages.sevenimage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0,top: 100),
                    child: Image.asset(AppImages.eightimage),
                  ),
                ],
              ) ),

                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.CyanColor,
                      ),
                      child: TextFormbuttonwidget(text: 'Continue with email', icon: AppIcons.messagelogo),
                    )
                  ),
                  SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 3,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: AppColors.BlackColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              BlackTextWidget(text: 'or Continue with'),
              Container(
                height: 3,
                width: double.infinity,
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
              LogoButton(text: 'facebook', icon: AppIcons.facebookimage),
              LogoButton(text: 'Google', icon: AppIcons.googleimage)
            ],
          ),
                ],
              ),
    );
  }
}
