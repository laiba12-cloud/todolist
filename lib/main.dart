import 'package:flutter/material.dart';
import 'package:todolist/view/authview/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
