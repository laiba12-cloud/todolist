import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/components/textformbutton.dart';
import 'package:todolist/paractice/view/signup2.dart';
class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: BlackTextWidget(text: 'Welcome Back'),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: GreyTextWidget(text: 'Your work faster and structured with todyapp'),
          ),
          BlackTextWidget(text: 'Email Address'),
         TextFormbuttonwidget(text: 'name@example.com', icon: ''),
          Spacer(),
          CyanButton(text: 'Next', ontap: (){
            Signup2();
          }),
        ],
      ),
    );
  }
}
