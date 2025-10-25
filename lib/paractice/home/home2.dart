import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/container.dart';
import 'package:todolist/controller/components/containerplan.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlackTextWidget(text: 'Create to do list'),
          GreyTextWidget(text: 'Choose your to do list color theme'),
         ContainerWidget(color: AppColors.CyanColor),
          ContainerWidget(color: AppColors.BlackColor),
          ContainerWidget(color: AppColors.RedColor),
          ContainerWidget(color: AppColors.BlueColor),
          Spacer(),
          CyanButton(text: 'Open TodyApp', ontap: (){}),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
