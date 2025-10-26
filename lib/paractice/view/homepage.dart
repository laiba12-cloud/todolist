import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appimages/appimages.dart';
class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackTextWidget(text: 'Create to do list'),
        GreyTextWidget(text: 'choose your todo list color theme'),
        Image.asset(AppImages.eightimage),
          Spacer(),
          CyanButton(text: 'Open TodyApp', ontap: (){}),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
