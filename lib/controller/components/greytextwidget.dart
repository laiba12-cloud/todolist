import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreyTextWidget extends StatelessWidget {
  final String text;
  GreyTextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: Colors.grey,
      fontSize:15,
    ),
    );
  }
}