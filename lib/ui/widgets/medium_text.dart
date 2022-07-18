import 'package:flutter/material.dart';

class MediamTextIcon extends StatelessWidget {
  String text;
  IconData icon;
  //int? size= 20;
  MediamTextIcon({required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 59,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
            Icon(icon,color: Colors.black,size: 16,)
          ],
        ),
      ),
    );
  }
}

