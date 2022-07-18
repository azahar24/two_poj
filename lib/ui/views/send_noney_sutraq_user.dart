import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class SendMoneySutraqUser extends StatelessWidget {
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
                      width: 85,
                    ),
                    MediamText(text: 'Transfer to Sutraq User')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SmallText(
                  text:
                  'Ensure to fill in the neccessary details of the\n recipient in order to continue'),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 470,
                width: 340,
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: 'Select Your Account'),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds(
                        prefixicon: Icons.food_bank_outlined,
                          suffixicon: Icons.arrow_drop_down_circle_rounded,

                          hinttext: 'NGN Account '),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SmallText(text: 'Recipients Full Name'),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds(
                          prefixicon: Icons.account_circle_outlined,


                          hinttext: 'Sutraq ID'),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SmallText(text: 'Recipient Sutraq ID'),
                    Container(
                      height: 55,
                      width: 300,
                      child: CustomTextFileds(
                          prefixicon: Icons.numbers,


                          hinttext: 'Sutraq ID'),

                    ),
                    SizedBox(
                      height: 10,
                    ),


                    SmallText(text: 'Amount'),
                    Container(
                      height: 55,
                      width: 300,
                      child:  CustomTextField(
                          TextInputType.text,
                          false,
                          controller,
                          Icons.numbers,
                          context,
                          'Enter Amount'),


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
