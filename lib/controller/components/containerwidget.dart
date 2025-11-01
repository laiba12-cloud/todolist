import 'package:flutter/material.dart';
import 'package:todolist/controller/components/textwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class ContainerWidget2 extends StatelessWidget {
  String text;
  final Color color;
  final VoidCallback ontap;
  String icon;
   ContainerWidget2({super.key,required this.text,required this.color,required this.ontap,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
    height:150,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(icon,color: color,),
          TextWidget(txt: text, clr: color,),

        ],
      ),
    );
  }
}
