import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackTextWidget extends StatelessWidget {
  final String text;
  const BlackTextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize:15,
    ),
    );
  }
}