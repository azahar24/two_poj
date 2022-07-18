import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:two_poj/ui/widgets/custom_text_filed.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class SendMoneyBank extends StatelessWidget {
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
                    MediamText(text: 'Bank Transfer')
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
                height: 15,
              ),
              Container(
                height: 625,
                width: 340,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SmallText(text: 'Select Account'),
                                SizedBox(
                                  width: 130,
                                ),
                                Text(
                                  '+ Add New',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFF046AE1)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextFileds(
                                  prefixicon: Icons.home,
                                  suffixicon:
                                      Icons.arrow_drop_down_circle_rounded,
                                  hinttext: 'NGN Account '),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Recipients Country'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextFileds(
                                  prefixicon: Icons.location_on_outlined,
                                  suffixicon:
                                      Icons.arrow_drop_down_circle_rounded,
                                  hinttext: 'Nigeria'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Recipients Destination'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextFileds(
                                  prefixicon: Icons.location_on_outlined,
                                  suffixicon:
                                      Icons.arrow_drop_down_circle_rounded,
                                  hinttext: 'UBA Bank'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Recipients Account Name'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextField(
                                  TextInputType.text,
                                  false,
                                  controller,
                                  Icons.account_circle_outlined,
                                  context,
                                  'Enter Account Name'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Account Number'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextField(
                                  TextInputType.text,
                                  false,
                                  controller,
                                  Icons.numbers,
                                  context,
                                  'Enter Account Number'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(text: 'Amount'),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 55,
                              width: 300,
                              child: CustomTextField(
                                  TextInputType.text,
                                  false,
                                  controller,
                                  Icons.numbers,
                                  context,
                                  'Enter Amount'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 50,
                                width: 300,
                                child: ButtonAuthPage(
                                    text: 'Proceed',
                                    onpressed: () {
                                      Get.defaultDialog(
                                          title: 'Choose payment option',
                                          titleStyle: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                          content: Column(
                                            children: [
                                              Text(
                                                'Pick a card to continue.',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Stack(
                                              clipBehavior: Clip.none,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        height: 80,
                                                        width: 80,
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'NGN',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            SizedBox(
                                                              height: 30,
                                                            ),
                                                            Text(
                                                              'N12,000',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ],
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF08083D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                      ),
                                                      Positioned(
                                                          top: -7,
                                                          right: -7,
                                                          child: Container(
                                                            clipBehavior: Clip.none,
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(10)
                                                            ),
                                                              
                                                              child: Icon(Icons
                                                                  .swipe_right,color: Colors.green,)))
                                                    ],
                                                  ),
                                                  Card(
                                                    shape:
                                                        BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    elevation: 5,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      height: 80,
                                                      width: 80,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'GBP',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                          Text(
                                                            '£500',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    elevation: 5,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      height: 80,
                                                      width: 80,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'GBP',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                          Text(
                                                            '£500',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ));
                                    }))
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
