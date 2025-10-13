import 'package:flutter/material.dart';
import 'package:todolist/view/homeview/FillScreen.dart';
import 'package:todolist/view/homeview/choosethemes.dart';
import 'package:todolist/view/homeview/create%20task.dart';

import '../../controller/utills/appcolors.dart';
import '../../controller/utills/appicons/appicons.dart';




class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int index=0;
  final screens=[
    ThemeScreen(),//==0
    CreateTask(),//---1
    FillForm(),//---2
    FillForm(),//---3
    FillForm(),//---4
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child: screens.elementAt(index)),
      bottomNavigationBar: BottomNavigationBar(

          currentIndex: index,
        onTap: (value){
            index=value;
            setState(() {

            });
        },
        selectedIconTheme: IconThemeData(color: AppColors.CyanColor),
        unselectedIconTheme: IconThemeData(color: AppColors.GreyColor),
          items: [
        BottomNavigationBarItem(icon: Image.asset(AppIcons.homelogo),label: ''),
        BottomNavigationBarItem(icon:Image.asset(AppIcons.shoplogo),label: ''),
        BottomNavigationBarItem(icon:Image.asset(AppIcons.calendarlogo),label: ''),
        BottomNavigationBarItem(icon:Image.asset(AppIcons.categorylogo),label: ''),
        BottomNavigationBarItem(icon:Image.asset(AppIcons.paperpluslogo),label: ''),


      ],


      ),
    );
  }
}
