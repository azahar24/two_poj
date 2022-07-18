import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_2.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class Details extends StatelessWidget {
  TextEditingController controller = TextEditingController();
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
                    MediamText(text: 'Add New Bank Card')
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                height: 460,
                width: 340,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: 25,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(text: 'Card Number'),
                            Container(
                                height: 40,
                                width: 300,
                                child: CustomTextField2(
                                    TextInputType.text,
                                    false,
                                    controller,
                                    Icons.account_circle_outlined,
                                    context)),
                            SizedBox(
                              height: 10,
                            ),

                            SmallText(text: 'Recipients Country'),
                            Container(
                                height: 40,
                                width: 300,
                                child: CustomTextField2(
                                    TextInputType.text,
                                    false,
                                    controller,
                                    Icons.location_on_outlined,
                                    context)),
                            SizedBox(
                              height: 10,
                            ),

                            SmallText(text: 'Bank'),
                            Container(
                                height: 40,
                                width: 300,
                                child: CustomTextField2(
                                    TextInputType.text,
                                    false,
                                    controller,
                                    Icons.food_bank_outlined,
                                    context)),
                            SizedBox(
                              height: 10,
                            ),

                            SmallText(text: 'Account Number'),
                            Container(
                                height: 40,
                                width: 300,
                                child: CustomTextField2(
                                    TextInputType.text,
                                    false,
                                    controller,
                                    Icons.numbers,
                                    context)),
                            SizedBox(
                              height: 20,
                            ),
                            
                            Row(

                              children: [
                                SizedBox(width: 30,),
                                Column(

                                  children: [
                                    SmallText(text: 'Amount to send'),
                                    MediamText(text: 'N20,000'),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    SmallText(text: 'Service Fee'),
                                    MediamText(text: 'N50'),
                                  ],
                                )
                              ],
                            ),

                            SizedBox(height: 20,),
                            Container(
                                height: 50,
                                width: 300,
                                child: ButtonAuthPage(text: 'Send N20,050', onpressed: (){}))
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
