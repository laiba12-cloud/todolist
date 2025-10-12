import 'package:flutter/material.dart';
import 'package:todolist/view/homeview/FillScreen.dart';
import 'package:todolist/view/homeview/choosethemes.dart';
import 'package:todolist/view/homeview/create%20task.dart';




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
      body: screens.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(

          currentIndex: index,
        onTap: (value){
            index=value;
            setState(() {

            });
        },
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.purple),
          items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('AppIcons.')),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('path'),),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('path',),),label: ''),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('path'),),label: '')


      ],


      ),
    );
  }
}
