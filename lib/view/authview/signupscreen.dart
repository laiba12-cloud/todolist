import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/components/textboxwidget.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Center(child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlackTextWidget(text: 'Create Account'),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 45.0),
            child: GreyTextWidget(text: 'Create your account and feels the benefits'),
          ),
          SizedBox(height:30),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: BlackTextWidget(text: 'User name'),
          // ),

          TextFormwidget(hint: 'enter your user name',text: 'User name',),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: BlackTextWidget(text: 'password'),
          // ),
          TextFormwidget(hint: 'enter your password',text: 'Password',),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CyanButton(text: 'Signup',),
          ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}