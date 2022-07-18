import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    MediamText(text: 'Notifications')
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 650,
                width: 385,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Got a minute to help us out?',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),),
                        //SizedBox(width: 40,),
                        Text('9:40am',style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            //fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('We’d like to know how you heard about Sutraq.'
                        ' It’s so we can better share our mission with the'
                        ' world. Tap to take the survey.',style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Got a minute to help us out?',style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        ),),
                        //SizedBox(width: 40,),
                        Text('9:40am',style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          //fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('We’d like to know how you heard about Sutraq.'
                        ' It’s so we can better share our mission with the'
                        ' world. Tap to take the survey.',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                    ),),

                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
