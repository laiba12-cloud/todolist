import 'package:flutter/material.dart';
import 'package:todolist/controller/components/textwidget.dart';
class Containerplan extends StatelessWidget {
  final Color clr;
  final String text1;
  final String text2;
  const Containerplan({super.key,required this.clr,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height:200,
      width: 250,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width:10,
          color:clr,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
          [
            TextWidget(txt: ''),
            TextWidget(txt: ''),
            TextWidget(txt: ''),
          ]
      ),
    );
  }
}
