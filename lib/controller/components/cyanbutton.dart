import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class CyanButton extends StatelessWidget {
  String text;
  VoidCallBack ontap;
   CyanButton({super.key,required this.text,required this.ontap});

  @override
  Widget build(BuildContext context) {
//
    return InkWell(
      onTap:ontap,
      child: Container(
        margin:EdgeInsets.Symmetric(horizontal:20),
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

      ),
    );
  }
}
