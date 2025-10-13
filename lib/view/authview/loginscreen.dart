import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';
import 'package:todolist/controller/components/textboxwidget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: BlackTextWidget(text: 'Welcome back Again!'),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: GreyTextWidget(text: 'Your work faster and structured with todyApp'),
            ),
            SizedBox(height:30),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: BlackTextWidget(text: 'Email Address'),
            // ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormwidget(hint: 'name@example.com',text: 'Email Address',),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: CyanButton(text: 'Next', ontap: () {  },),
            ),
            SizedBox(height: 5,)
          ],
      ),
    );
  }
}