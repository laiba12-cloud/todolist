import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';

import '../utills/appcolors.dart';
class LogoButton extends StatelessWidget {
  String text;
  String icon;
  LogoButton({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration:BoxDecoration(
            color: AppColors.CyanColor,
            borderRadius:BorderRadius.circular(10),
            border:Border.all(width:3,
                color:AppColors.WhiteColor)
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icon),
            BlackTextWidget(text:text),

          ],
        )

    );
  }
}
