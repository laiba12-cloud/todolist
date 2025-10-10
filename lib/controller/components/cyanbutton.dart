import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class CyanButton extends StatelessWidget {
  String text;
   CyanButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      height: 40,
      decoration:BoxDecoration(
        color: AppColors.CyanColor,
        borderRadius:BorderRadius.circular(10),
        border:Border.all(width:3,
        color:Colors.white)
      ),
    child:Center(
      child:Text(
        text,
        style:TextStyle(
          color:Colors.white,

        )
      )
    )

    );
  }
}
