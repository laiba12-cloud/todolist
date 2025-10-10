import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class TextWidget extends StatelessWidget {
  final String txt;
  const TextWidget({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      'txt',style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.BlackColor.withOpacity(2),
    ),
    );
  }
}
