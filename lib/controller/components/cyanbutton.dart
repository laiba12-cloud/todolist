import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class CyanButton extends StatefulWidget {
  String text;
 final VoidCallback ontap;
   CyanButton({super.key,required this.text,required this.ontap});

  @override
  State<CyanButton> createState() => _CyanButtonState();
}

class _CyanButtonState extends State<CyanButton> {
  @override
  Widget build(BuildContext context) {
//
    return InkWell(
      onTap:widget.ontap,
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
        child:Text(
          widget.text,
          style:TextStyle(
            color:Colors.white,

          )
        )
      )

      ),
    );
  }
}
