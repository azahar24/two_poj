import 'package:flutter/material.dart';

class ViewAllButton extends StatefulWidget {
  String text;
  Function onpressed;

  ViewAllButton({required this.text,required this.onpressed});

  @override
  State<ViewAllButton> createState() => _ButtonAuthPageState();
}

class _ButtonAuthPageState extends State<ViewAllButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 90,
      color: Colors.white,
      child: ElevatedButton(


        onPressed: (){
          setState((){
            widget.onpressed();
          });
        },
        child: Text(widget.text,style: TextStyle(
            fontSize: 16,
            color: Colors.green
        ),),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0
        ),

      ),
    );
  }
}