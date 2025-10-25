import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/cyantextwidget.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
import 'package:todolist/paractice/onboarding/onboard2.dart';
class OnBoard1 extends StatelessWidget {
  const OnBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Expanded(
      flex: 50,
      child:Column(children: [
          Row(
          children: [
            Spacer(),
            CyanTextWidget(text: 'Skip'),
            SizedBox(width:15)
          ],
        ),
         Stack(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Image.asset(AppImages.MainImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: Image.asset(AppImages.secondImage),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: Image.asset(AppImages.thirdImage),
                ),
          ],
            ),],
      ),
    ),
          Expanded(child:Column(children: [
          SizedBox(height: 20,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0,vertical: 20),
          child:BlackTextWidget(text: 'Your Convenience in \n Making a tody list App'),
          ),
          SizedBox(height: 10,),
          GreyTextWidget(text: 'Here is a mobile platform that helps you create task \n or to list so that it can help you in every job \n easier and faster '),
          Spacer(),
          CyanButton(text: 'Continue', ontap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(Builder:(context)=>OnBoard2()));
          }),
          SizedBox(height: 20,),
    ],
          ),
          ),
        ],
      ),
    );
  }
}
