import 'package:flutter/material.dart';
import 'package:todolist/controller/components/container.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';

import '../../controller/components/blacktextwidget.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          BlackTextWidget(text:'Create to do list'),
          GreyTextWidget(text:'Choose your to do list color theme'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ContainerWidget(color: AppColors.CyanColor),
              ContainerWidget(color:AppColors.BlackColor ),
              ContainerWidget(color: AppColors.RedColor),
              ContainerWidget(color: AppColors.BlueColor),
            ]
          ),
          Spacer(),
          CyanButton(text: 'Open TodyApp'),
          SizedBox(height:30),
        ],
      ),
    );
  }
}
