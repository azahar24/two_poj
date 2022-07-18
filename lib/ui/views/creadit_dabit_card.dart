import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class CraditDabitCard extends StatelessWidget {
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
                    MediamText(text: 'Credit/Debit Cards')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 560,
                width: 340,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Positioned(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(

                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/img/check_circle.png'))
                                  ),
                                ),
                                SizedBox(width: 15,),
                                SmallText(text: 'Set as default'),

                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF0041C4),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 150.h,
                              width: 280.w,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'VISA',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.linear_scale_sharp,
                                              color: Colors.green,
                                            ))
                                      ],
                                    ),
                                    Text(
                                      'CARD NUMBER',
                                      style: TextStyle(
                                          fontSize: 9, color: Color(0xFFFEFEFE)),
                                    ),
                                    Text(
                                      '**** **** **** *379',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'CARD HOLDER NAME',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                        Text(
                                          'EXPIRE DATE',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Precious Ogar',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '02/25',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                            SizedBox(height: 20,),

                            //

                            Row(

                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/img/check_circle.png'))
                                  ),
                                ),
                                SizedBox(width: 15,),
                                SmallText(text: 'Set as default'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF0041C4),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 150.h,
                              width: 280.w,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'VISA',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.linear_scale_sharp,
                                              color: Colors.green,
                                            ))
                                      ],
                                    ),
                                    Text(
                                      'CARD NUMBER',
                                      style: TextStyle(
                                          fontSize: 9, color: Color(0xFFFEFEFE)),
                                    ),
                                    Text(
                                      '**** **** **** *379',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'CARD HOLDER NAME',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                        Text(
                                          'EXPIRE DATE',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Precious Ogar',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '02/25',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
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


                            SizedBox(height: 20,),
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
