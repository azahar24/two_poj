import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class TopUpBank extends StatelessWidget {
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
                    MediamText(text: 'Fund Wallet')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SmallText(
                  text:
                      'Ensure to fill in the neccessary\n details of the recipient in order to\n continue'),
              SizedBox(
                height: 150,
              ),
              Container(
                height: 420,
                width: 340,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: 60,
                      top: -50,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF08083D),
                            borderRadius: BorderRadius.circular(20)),
                        height: 100.h,
                        width: 220.w,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NGN',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'AVAILABLE BALANCE',
                                style: TextStyle(
                                    fontSize: 9, color: Color(0xFFFEFEFE)),
                              ),


                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'N190,000',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(Icons.arrow_forward,color: Colors.green,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 25,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(text: 'Amount'),
                            Container(
                                height: 55,
                                width: 300,
                                child: CustomTextFileds(
                                    prefixicon: Icons.numbers,

                                    hinttext: 'Enter Amount'),

                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Payment Option'),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextFileds(
                                  prefixicon: Icons.food_bank_rounded,
                                  suffixicon: Icons.arrow_drop_down_circle_rounded,

                                  hinttext: 'Bank Account'),

                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SmallText(text: 'Select Account'),
                                SizedBox(
                                  width: 130,
                                ),
                                Text('+ Add New',style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF046AE1)

                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextFileds_suf(
                                  suffixicon: Icons.arrow_drop_down_circle_rounded,

                                  hinttext: '938103802 (Access Bank)'),

                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 50,
                                width: 300,
                                child: ButtonAuthPage(
                                    text: 'Proceed', onpressed: () {}))
                          ],
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
