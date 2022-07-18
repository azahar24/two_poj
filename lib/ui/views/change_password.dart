import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class ChangePassword extends StatelessWidget {
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
                    MediamText(text: 'Change Password')
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 600,
                width: 385,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: 'Current Password'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 20),
                      child: Container(
                        height: 50,
                        //width: 35,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          obscureText: true,


                          decoration: InputDecoration(


                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFC5C5C5))
                            ),
                          ),),
                      ),
                    ),

                    SmallText(text: 'New Password'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 20),
                      child: Container(
                        height: 50,
                        //width: 35,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          obscureText: true,


                          decoration: InputDecoration(


                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFC5C5C5))
                            ),
                          ),),
                      ),
                    ),

                    SmallText(text: 'Confirm New Password'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 20),
                      child: Container(
                        height: 50,
                        //width: 35,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          obscureText: true,


                          decoration: InputDecoration(


                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFC5C5C5))
                            ),
                          ),),
                      ),
                    ),

                    SizedBox(height: 30,),

                    ButtonAuthPage(text: 'CHANGE PASSWORD', onpressed: (){})
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
