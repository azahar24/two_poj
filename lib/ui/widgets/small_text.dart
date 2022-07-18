import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;

  SmallText({required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: 14.5,
          color: Color(0xFF8D8D8D),

          //fontWeight: FontWeight.bold
      ),
    );
  }
}

