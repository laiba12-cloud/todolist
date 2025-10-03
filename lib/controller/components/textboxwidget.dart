import 'package:flutter/material.dart';
import 'package:todolist/controller/components/blacktextwidget.dart';
class TextFormwidget extends StatelessWidget {
  final String hint;
  final String text;

   TextFormwidget({super.key,required this. hint, required this.text});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlackTextWidget(text: text),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffF6F7F9),
                border: Border.all(color: Color(0xffE0E5ED))
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: hint,
                  prefixIcon: Icon(Icons.call, color: Colors.grey),
                  )
                  ),
            ),
          ],
        ),
      );
  }
}
