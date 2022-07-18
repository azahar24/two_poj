import 'package:flutter/material.dart';

class ButtonAuthPage extends StatefulWidget {
  String text;
  Function onpressed;

  ButtonAuthPage({required this.text,required this.onpressed});

  @override
  State<ButtonAuthPage> createState() => _ButtonAuthPageState();
}

class _ButtonAuthPageState extends State<ButtonAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 340,
      color: Color(0xFF62BB46),
      child: ElevatedButton(

        onPressed: (){
          setState((){
            widget.onpressed();
          });
        },
        child: Text(widget.text,style: TextStyle(
          fontSize: 16,
          color: Colors.white
        ),),
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF62BB46)
        ),
      ),
    );
  }
}
