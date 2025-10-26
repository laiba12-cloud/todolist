import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/components/textformbutton.dart';
import 'package:todolist/controller/utills/appicons/appicons.dart';
import 'package:todolist/paractice/view/homepage.dart';
class Signup2 extends StatelessWidget {
  const Signup2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150.0,right: 150),
            child: BlackTextWidget(text: 'Create account'),
          ),
    Padding(
    padding: const EdgeInsets.only(left: 150.0,right: 150),
    child:GreyTextWidget(text: 'Create your account and feel the benefits'),),
BlackTextWidget(text: 'UserName'),
          TextFormbuttonwidget(text: 'Enter Your Username', icon: ''),
          BlackTextWidget(text: 'Password'),
          TextFormbuttonwidget(text: 'Enter Your Password', icon: AppIcons.eyeofflogo),
          Spacer(),
          CyanButton(text: 'Sign Up', ontap: (){
            Homepage2();
          }),
        ],
      )
    );
  }
}
