import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
class OnBoardingtwoScreen extends StatelessWidget {
  const OnBoardingtwoScreen({super.key});

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
                  Center(child: Image.asset(AppImages.MainImagetwo)),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: Image.asset(AppImages.fourthimage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0,top: 100),
                    child: Image.asset(AppImages.fifthimage),
                  ),
                ],
              ) ),
          Expanded(
              flex: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlackTextWidget(text: 'Find the partiality in \n making your todo list'),
                  SizedBox(height: 20,),
                  GreyTextWidget(text: 'Easy-to-understand user interface that makes you\n more comfortable when you want to create a task or  \n to do list,Todyapp can also improve productivity'),
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
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                    child: CyanButton(text: 'Continue', ontap: () {  },),
                  ),
                  SizedBox(height: 20,),
                ],
              ))
        ],
      ),
    );
  }
}
