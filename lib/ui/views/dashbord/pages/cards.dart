import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dashbord/model_kist_con.dart';

class Cards extends StatelessWidget {

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
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text('My Cards',style: TextStyle(
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
                            color: Color(0xFF0041C4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 170.h,
                        width: 300.w,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('VISA',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                  ),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.linear_scale_sharp,color: Colors.green,))
                                ],
                              ),
                              Text('CARD NUMBER',style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFFFEFEFE)
                              ),),
                              Text('**** **** **** *379',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                              SizedBox(height: 13,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('CARD HOLDER NAME',style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white
                                  ),),
                                  Text('EXPIRE DATE',style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white
                                  ),),

                                ],
                              ),
                              SizedBox(height: 3,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Precious Ogar',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                                  Text('02/25',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(

                        decoration: BoxDecoration(
                            color: Color(0xFF0041C4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 170.h,
                        width: 300.w,

                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('VISA',style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                  ),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.linear_scale_sharp,color: Colors.green,))
                                ],
                              ),
                              Text('CARD NUMBER',style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xFFFEFEFE)
                              ),),
                              Text('**** **** **** *379',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              SizedBox(height: 13,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('CARD HOLDER NAME',style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white
                                  ),),
                                  Text('EXPIRE DATE',style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white
                                  ),),

                                ],
                              ),
                              SizedBox(height: 3,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Precious Ogar',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                  Text('02/25',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //scorl con
              Container(
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
                        child: Text('View All',style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                            fontWeight: FontWeight.w600
                        ),),
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
              )
            ],
          ),
        )
    );
  }
}
