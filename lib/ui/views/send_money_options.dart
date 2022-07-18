import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class SendMoneyOption extends StatelessWidget {
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
                      width: 85,
                    ),
                    MediamText(text: 'Send Money!')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SmallText(
                  text:
                  'Choose an option to begin the transfer'),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Container(
                    height: 75,
                    width: 355,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.home_filled,color: Colors.green,size: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bank Transfer',style: TextStyle(
                              fontSize:  14,
                              fontWeight: FontWeight.w500
                            ),),
                            SmallText(text: 'Send money from your sutraq accounts\n to any bank account in the world')
                            
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.green,size: 20,),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 75,
                    width: 355,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.home_filled,color: Colors.green,size: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sutraq User',style: TextStyle(
                                fontSize:  14,
                                fontWeight: FontWeight.w500
                            ),),
                            SmallText(text: 'Send money from your sutraq accounts\n to any bank account in the world')

                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.green,size: 20,),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
