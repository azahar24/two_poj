import 'package:flutter/material.dart';
import 'package:two_poj/ui/widgets/button_auth_page.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

class Sent extends StatelessWidget {
  const Sent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090232),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 30,right: 30),

            height: 600,
            width: 350,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 86,
                    width: 86,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/img/Icon.png'))
                    ),
                  ),
                ),
                MediamText(text: 'Success'),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SmallText(text: "You’ve successfully transferred money."),
                ),
                Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('From:',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                              ),),
                              Text('Precious Ogar',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              )),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'Credit Card'),
                              SmallText(text: 'VISA *8064')
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('From:',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),),
                              Text('Precious Ogar',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              )),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'Bank Account'),
                              SmallText(text: '0273829134')
                            ],
                          ),

                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'Bank Name'),
                              SmallText(text: 'Stanbic IBTC')
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Date:',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),),
                              Text('26 Apr, 2019',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              )),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SmallText(text: '12:48 PM')
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        ),),
                        Text('\$4,800',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                        )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.menu_book,color: Color(0xFF2E2E2E),),
                    SizedBox(width: 15,),
                    SmallText(text: 'Download Receipt')
                  ],
                ),
                SizedBox(height: 20,),
                ButtonAuthPage(text: 'DONE', onpressed: (){})
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),

          ),
        ),
      )
    );
  }
}
