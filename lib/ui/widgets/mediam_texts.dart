import 'package:flutter/material.dart';

class MediamText extends StatelessWidget {
  String text;
  //int? size= 20;
  MediamText({required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
