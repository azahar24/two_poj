import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';
import 'package:two_poj/ui/views/dashbord/pages/dashbord/model_kist_con.dart';

import '../../../../widgets/button_auth_page.dart';
import '../../../../widgets/view_all_buttom.dart';



class Dashbord extends StatefulWidget {

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {


  var _currPageValue = 0.0;


  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0,viewportFraction: 0.85);

    super.initState();
    _controller.addListener(() {
      _currPageValue=_controller.page!;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Center(child: Text('OP',style: TextStyle(
                      color: Colors.white
                    ),)),
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF3417A8),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello, Precious!',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      Text('Su/Pre123',style: TextStyle(
                          fontSize: 10,
                          color: Colors.white
                      ),),
                    ],
                  ),
                  SizedBox(width: 174.w,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notification_important_outlined,color: Colors.white,))
                ],
              ),
            ),
            ///
            Container(
              height: 120.h,
              //width: 260,
              //color: Colors.red,
              child: ListView.builder(
                  controller: _controller,

                  scrollDirection: Axis.horizontal,
                  itemCount: contents_con.length,




                  itemBuilder: (_,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100.h,
                        width: 250.w,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(

                                    height: 16.h,
                                    width: 14.w,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/img/flass.png',
                                        ),
                                        //fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  Text(contents_con[index].title,style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(width: 40,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,size: 14,))
                                ],

                              ),
                              Text('AVAILABLE BALANCE',style: TextStyle(
                                fontSize: 10,
                                color: Colors.black38,
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(contents_con[index].tk,style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF46A02A)
                                  ),),
                                  //SizedBox(width: 80,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,size: 20, color: Color(0xFF46A02A),))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents_con.length,
                      (index) => buildDot(index, context),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
            Container(
              height: 480.h,

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 5,left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50.h,
                          width: 56.w,
                          child: IconButton(onPressed: (){
                            Get.defaultDialog(
                              title: 'Choose option',
                              content: Column(
                                children: [
                                  Text('Pick a card to continue.',style: TextStyle(
                                    fontSize: 10
                                  ),),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        elevation:5,
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          height: 80,
                                          width: 80,
                                          child: Column(
                                            children: [
                                              Text('GBP',style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black
                                              ),),
                                              SizedBox(height: 30,),
                                              Text('£500',style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black
                                              ),),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      ),
                                      Card(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        elevation:5,
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          height: 80,
                                          width: 80,
                                          child: Column(
                                            children: [
                                              Text('GBP',style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black
                                              ),),
                                              SizedBox(height: 30,),
                                              Text('£500',style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black
                                              ),),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                      height: 50,
                                      width: 240,
                                      child: ButtonAuthPage(
                                          text: 'FOUND WALLET', onpressed: () {}))
                                ],
                              )
                            );
                          }, icon: Icon(Icons.wallet_outlined,color: Colors.white,size: 25,)),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Fund Wallet',style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50.h,
                          width: 56.w,
                          child: IconButton(onPressed: (){
                            Get.defaultDialog(
                                title: 'Choose option',
                                content: Column(
                                  children: [
                                    Text('Pick a card to continue.',style: TextStyle(
                                        fontSize: 10
                                    ),),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          elevation:5,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 80,
                                            width: 80,
                                            child: Column(
                                              children: [
                                                Text('GBP',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                                SizedBox(height: 30,),
                                                Text('£500',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          elevation:5,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 80,
                                            width: 80,
                                            child: Column(
                                              children: [
                                                Text('GBP',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                                SizedBox(height: 30,),
                                                Text('£500',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 50,
                                        width: 240,
                                        child: ButtonAuthPage(
                                            text: 'SEND MONEY', onpressed: () {}))
                                  ],
                                )
                            );
                          }, icon: Icon(Icons.wallet_outlined,color: Colors.white,size: 25,)),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Send Money',style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 56,
                          child: IconButton(onPressed: (){
                            Get.defaultDialog(
                                title: 'Choose option',
                                content: Column(
                                  children: [
                                    Text('Pick a card to continue.',style: TextStyle(
                                        fontSize: 10
                                    ),),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          elevation:5,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 80,
                                            width: 80,
                                            child: Column(
                                              children: [
                                                Text('GBP',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                                SizedBox(height: 30,),
                                                Text('£500',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          elevation:5,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 80,
                                            width: 80,
                                            child: Column(
                                              children: [
                                                Text('GBP',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                                SizedBox(height: 30,),
                                                Text('£500',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 50,
                                        width: 240,
                                        child: ButtonAuthPage(
                                            text: 'WITHRAW FOUND', onpressed: () {}))
                                  ],
                                )
                            );
                          }, icon: Icon(Icons.send,color: Colors.white,size: 25,)),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Withdraw',style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 395.h,
                  width: 395.w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recent Transactions',style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                      SizedBox(height: 10,),
                      Card(
                        child: ListTile(
                          title: Text('Access Bank',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          subtitle: Text('28, Jan 2020',style: TextStyle(
                              fontSize: 10,
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                          leading: Icon(Icons.add_call,size: 30,),
                          trailing: Text('\$2,400',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Access Bank',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          subtitle: Text('28, Jan 2020',style: TextStyle(
                              fontSize: 10,
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                          leading: Icon(Icons.add_call,size: 30,),
                          trailing: Text('\$2,400',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Access Bank',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          subtitle: Text('28, Jan 2020',style: TextStyle(
                              fontSize: 10,
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                          leading: Icon(Icons.add_call,size: 30,),
                          trailing: Text('\$2,400',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Access Bank',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          subtitle: Text('28, Jan 2020',style: TextStyle(
                              fontSize: 10,
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                          leading: Icon(Icons.add_call,size: 30,),
                          trailing: Text('\$2,400',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ),
                      ),
                      Center(
                        child: ViewAllButton(text: 'View All', onpressed: (){
                          Get.toNamed(transactionhistory);
                        }),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                )
              ),
            ),
              ],
            )

          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {

    return Container(
      height: 4,
      width:  _currPageValue == index ? 22 : 22,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _currPageValue  ==index ? Color(0xFF62BB46) : Color(0xFFE5E5E5),
      ),
    );
  }
}
