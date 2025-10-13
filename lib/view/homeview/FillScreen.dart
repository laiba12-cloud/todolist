import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
import 'package:todolist/controller/components/cyanbutton.dart';
import 'package:todolist/controller/components/greytextwidget.dart';

import '../../controller/utills/appcolors.dart';
class FillForm extends StatelessWidget {
  const FillForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back_ios,color: AppColors.BlackColor,)
      ),
      body:Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
        children: [
          BlackTextWidget(text: 'Create more than 1000  \n projects tasks '),
          GreyTextWidget(text: 'Upgrade to premium users to get things about premium \n features that you can enjoy only with pay for one year \n or one month subscription'),
          Spacer(),
          CyanButton(text: 'Continue', ontap: (){},)
        ],
      ),
      ),
    );
  }
}
