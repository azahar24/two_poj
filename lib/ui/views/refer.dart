import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class Refer extends StatelessWidget {
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
                    MediamText(text: 'Refer a Friend')
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 500,
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/img/atwork.png'))
                      ),
                    ),
                    SizedBox(height: 20,),
                    SmallText(text: 'Earn cash reward when your friends\n signup and use your referral link or\n                          code'),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      width: 200,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediamText(text: 'SU12344'),
                          Icon(Icons.copy_outlined,color: Color(0xFFDADADA),)
                          
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F8FF),
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            SmallText(text: 'Accepted'),
                            MediamText(text: '3'),
                          ],
                        ),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            SmallText(text: 'Amount Earned'),
                            MediamText(text: 'N200'),
                          ],
                        ),
                      ],
                    )
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
