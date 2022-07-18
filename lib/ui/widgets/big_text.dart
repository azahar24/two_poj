import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  //int? size= 20;
  BigText({required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold
    ),
    );
  }
}

