import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
class OnBoardingoneScreen extends StatelessWidget {
  const OnBoardingoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('Skip',style: TextStyle(
            color: AppColors.CyanColor,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 50,
              child:Stack(
                children: [
                  Center(child: Image.asset(AppImages.MainImage)),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Image.asset(AppImages.thirdImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset(AppImages.secondImage),
                  ),
                ],
              ) ),
          Expanded(
              flex: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlackTextWidget(text: 'Your Convenience in \n making a todo list'),
                  SizedBox(height: 20,),
                  GreyTextWidget(text: 'Here is a mobile app that helps you create a task \n or to list so that it can help you in every job \n easier and faster'),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0,right:60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.CyanColor
                        ),
                        Container(
                          height: 5,
                            width:20,
                          decoration: BoxDecoration(
                            color: AppColors.CyanColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        CircleAvatar(
                            radius: 4,
                            backgroundColor: AppColors.CyanColor
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                    child: CyanButton(text: 'Continue'),
                  ),
                  SizedBox(height: 20,),
                ],
              ))
        ],
      ),
    );
  }
}
