import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/controller/utills/appcolors.dart';

class CyanTextWidget extends StatelessWidget {
  final String text;
  const CyanTextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: AppColors.CyanColor,
      fontSize:15,
    ),
    );
  }
}
