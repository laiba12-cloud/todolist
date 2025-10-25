import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/cyanicontext.dart';
import 'package:todolist/controller/components/cyantextwidget.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
import 'package:todolist/paractice/home/home2.dart';
class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            BlackTextWidget(text: 'Welcome To'),
            SizedBox(width: 8,),
            CyanTextWidget(text: 'TodyApp'),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Expanded(
          flex: 50,
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: Image.asset(AppImages.MainImagethree),
          ),
            Padding(padding: const EdgeInsets.only(right:200),
              child:Image.asset(AppImages.siximage),),
            Padding(
              padding: const EdgeInsets.only(left:200.0),
              child: Image.asset(AppImages.sevenimage),
            )
        ],),
        ),
          Expanded(
              flex: 50,
              child: Column(
                children: [
Spacer(),
                  CyanIconText(text: 'continue with email', ontap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home2()));
                  }, icon: AppIcons.messagelogo),
                ],
              ))
        ],
      ),
    );
  }
}
