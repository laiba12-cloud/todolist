import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class TextWidget extends StatelessWidget {
  final String txt;
  final Color clr;
  const TextWidget({super.key,required this.txt,required this.clr});

  @override
  Widget build(BuildContext context) {
    return Text(
      'txt',style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: clr,
    ),
    );
  }
}
