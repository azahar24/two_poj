import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class BankAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
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
                    MediamText(text: 'Bank Accounts')
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),


              Container(
                height: 400,
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
                            SmallText(text: 'Check the radio button to set bank\n as default'),
                            SizedBox(height: 10,),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(color: Color(0xFFDEDEDE)),
                                        bottom: BorderSide(color: Color(0xFFDEDEDE)),
                                    )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank,color: Colors.green,),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('9381053802\n \(Access Bank - Precious Ogar\)',style: TextStyle(
                                              fontSize:  14,
                                              color: Color(0xFF595959),
                                              fontWeight: FontWeight.w500
                                          ),),
                                          SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFEC615B),

                                                )
                                              )
                                            ),
                                            child: Text('Remove',style: TextStyle(
                                                fontSize:  10,
                                                color: Color(0xFFEC615B),
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),

                                        ],
                                      ),
                                      SizedBox(width: 40,),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/img/check_circle.png'))
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: Color(0xFFDEDEDE)),
                                        bottom: BorderSide(color: Color(0xFFDEDEDE)),
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank,color: Colors.green,),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('9381053802\n \(Access Bank - Precious Ogar\)',style: TextStyle(
                                              fontSize:  14,
                                              color: Color(0xFF595959),
                                              fontWeight: FontWeight.w500
                                          ),),
                                          SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                      color: Color(0xFFEC615B),

                                                    )
                                                )
                                            ),
                                            child: Text('Remove',style: TextStyle(
                                                fontSize:  10,
                                                color: Color(0xFFEC615B),
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),

                                        ],
                                      ),
                                      SizedBox(width: 40,),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/img/check_circle.png'))
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: Color(0xFFDEDEDE)),
                                        bottom: BorderSide(color: Color(0xFFDEDEDE)),
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank,color: Colors.green,),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('9381053802\n \(Access Bank - Precious Ogar\)',style: TextStyle(
                                              fontSize:  14,
                                              color: Color(0xFF595959),
                                              fontWeight: FontWeight.w500
                                          ),),
                                          SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                      color: Color(0xFFEC615B),

                                                    )
                                                )
                                            ),
                                            child: Text('Remove',style: TextStyle(
                                                fontSize:  10,
                                                color: Color(0xFFEC615B),
                                                fontWeight: FontWeight.w500
                                            ),),
                                          ),

                                        ],
                                      ),
                                      SizedBox(width: 40,),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/img/check_circle.png'))
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 40,),
                            Container(
                                height: 50,
                                width: 300,
                                child: ButtonAuthPage(text: 'ADD NEW', onpressed: (){}))
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
