import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';
import 'package:two_poj/ui/widgets/big_text.dart';

import '../../../widgets/view_all_buttom.dart';
import 'dashbord/model_kist_con.dart';

class Wallet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Color(0xFF046AE1),
        child: Icon(Icons.add,color: Colors.white,),),
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Center(
                child: Text('My Wallets',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black
                ),),
              ),
            ),
            //title
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(

                      decoration: BoxDecoration(
                          color: Color(0xFF08083D),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 110.h,
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
                                Text(contents_con[0].title,style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),),
                                SizedBox(width: 40,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,size: 14,))
                              ],

                            ),
                            Text('AVAILABLE BALANCE',style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(contents_con[0].tk,style: TextStyle(
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
                    SizedBox(width: 10,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 110,
                      width: 250,

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
                                Text(contents_con[1].title,style: TextStyle(
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
                                Text(contents_con[1].tk,style: TextStyle(
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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            //scorl con
            Stack(
              children: [

                Container(
                  height: 530.h,

                  decoration: BoxDecoration(
                      color: Colors.white,
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
                              height: 50,
                              width: 56,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.wallet_outlined,color: Colors.white,size: 25,)),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Fund Wallet',style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50.h,
                              width: 56.w,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.wallet_outlined,color: Colors.white,size: 25,)),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Send Money',style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50.h,
                              width: 56.w,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.send_sharp,color: Colors.white,size: 25,)),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Withdraw',style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
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
                      height: 435.h,
                      width: 395.w,
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
                          SizedBox(height: 20,),
                          Center(
                            child: ViewAllButton(text: 'View All', onpressed: (){
                              Get.toNamed(transactionhistory);
                            }),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                          )
                      )
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
