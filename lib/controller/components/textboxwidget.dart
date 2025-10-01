import 'package:flutter/material.dart';
class TextFormwidget extends StatelessWidget {
  final String text;

   TextFormwidget({super.key,required this. text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: text,
          prefixIcon: Icon(Icons.call, color: Colors.grey),
    )
    );
  }
}
