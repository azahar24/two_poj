import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class AddBank extends StatelessWidget {
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
                    MediamText(text: 'Add New Bank\n     Account')
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
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: 'Bank'),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds_suf(
                        suffixicon: Icons.arrow_drop_down_circle_rounded,

                          hinttext: 'Select Bank'),

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SmallText(text: 'Account Number'),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds_suf(

                          hinttext: 'Your Account Number'),

                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SmallText(text: 'Registered Phone Number'),

                    SizedBox(height: 10,),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds_suf(

                          hinttext: 'Your Phone Number'),

                    ),

                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        height: 50,
                        width: 300,
                        child: ButtonAuthPage(
                            text: 'CONFRIME', onpressed: () {}))
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
