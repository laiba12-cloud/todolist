import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/controller/utills/appcolors.dart';

class BlackTextWidget extends StatelessWidget {
  final String text;
  const BlackTextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      fontWeight: FontWeight.w200,
          color: AppColors.BlackColor,
          fontSize:15,
        ),
    );
  }
}
