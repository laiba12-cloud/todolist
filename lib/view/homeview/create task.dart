import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/utills/appcolors.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  BlackTextWidget(text: 'Today'),
                  GreyTextWidget(text: 'Best platforms for creating todo list'),
                ],
              ),
              SizedBox(width:40),
              Icon(Icons.settings,color: AppColors.GreyColor,),
            ],
          ),
          Container(
            height:250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),),
              color: AppColors.WhiteColor,
            ),
            child: Column(
              children: [
                Container(
                  height:25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),),
                    color: AppColors.CyanColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.add_circle,color: AppColors.CyanColor,),
                    Spacer(),
                    BlackTextWidget(text: 'Tap plus to create a new task'),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    GreyTextWidget(text: 'Add your task'),
                    Spacer(),
                    GreyTextWidget(text: 'Today.Mon 20 july 2022'),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          //NavigationBar(destinations: )
        ],
      )
    );
  }
}
