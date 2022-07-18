import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';

import 'content_model.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Image.asset(
                          contents[i].image,
                          height: 300,
                        ),
                      ),
                      //image onbording
                      SizedBox(height: 25,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                                (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                   /*   //dot show

                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),

                    */
                      Expanded(
                        child: Container(
                         // padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(left: 5,right: 5),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFF62BB46),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Text(
                                contents[i].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                contents[i].discription,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 60,),
                              Container(

                                height: 45,
                                width: 280,
                                //color: Colors.black,
                                child: ElevatedButton(

                                    onPressed: (){
                                      Get.toNamed(login);
                                    },
                                    child: Text('LOGIN'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'TRY SUTRAQ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 8 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex ==index ? Color(0xFFE5E5E5) : Color(0xFF62BB46),
      ),
    );
  }
}


