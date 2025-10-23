import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
class CyanIconText extends StatelessWidget {
  final String icon;
  String text;
  final VoidCallback ontap;
  CyanIconText({super.key,required this.text,required this.ontap,required this.icon});

  @override
  Widget build(BuildContext context) {
//
    return InkWell(
      onTap:ontap,
      child: Container(
          margin:EdgeInsets.symmetric(horizontal:20),
          height: 40,
          decoration:BoxDecoration(
              color: AppColors.CyanColor,
              borderRadius:BorderRadius.circular(10),
              border:Border.all(width:3,
                  color:Colors.white)
          ),
          child:Center(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(icon),
                  Text(
                      text,
                      style:TextStyle(
                        color:AppColors.WhiteColor,
                      ),
                  ),

                ],
              )
          )

      ),
    );
  }
}
