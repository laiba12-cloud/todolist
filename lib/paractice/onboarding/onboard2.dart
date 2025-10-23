import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/cyantextwidget.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
import 'package:todolist/paractice/onboarding/onboard3.dart';
class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
Row(
  children: [
    Spacer(),
    CyanTextWidget(text: 'Skip'),
    SizedBox(width: 10,),
  ],
),
          Expanded(
              flex:50,
              child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:100.0),
                child: Image.asset(AppImages.MainImagetwo),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Image.asset(AppImages.fourthimage),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Image.asset(AppImages.fifthimage),
              ),
            ],
          ),
          ),
          Expanded(
              flex:50,child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlackTextWidget(text: ''),
                  GreyTextWidget(text: ''),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColors.GreyColor,
                        ),
                        Container(
                          height: 8,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColors.CyanColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColors.GreyColor,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CyanButton(text: 'Continue', ontap: (){
                    OnBoard3();
                  }),
                ],
              ) ,
          ),
        ],
      ),
    );
  }
}