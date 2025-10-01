import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class TextFormbuttonwidget extends StatelessWidget {
  final String text;
  final String icon;
  TextFormbuttonwidget({super.key,required this. text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: AppColors.WhiteColor),
          hintText: text,
          prefixIcon: Image.asset(icon),
        )
    );
  }
}
