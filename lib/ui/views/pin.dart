import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

class Pin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 33,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/img/verified_user.png'))
              ),
            ),
            SizedBox(height: 20,),
            MediamText(text: 'Enter Transaction Pin'),
            SizedBox(height: 10,),
            SmallText(text: 'Enter your PIN to authorize this account'),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500,),
                    //controller: controller,
                    obscureText: true,
                    //textInputAction: TextInputAction.next,
                    maxLines: 1,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),

                      //suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF62BB46)),
                      ),
                      //hintText: hinttext,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 45,
                  width: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                    //controller: controller,
                    obscureText: true,
                    //textInputAction: TextInputAction.next,
                    maxLines: 1,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),

                      //suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF62BB46)),
                      ),
                      //hintText: hinttext,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 45,
                  width: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                    //controller: controller,
                    obscureText: true,
                    //textInputAction: TextInputAction.next,
                    maxLines: 1,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),

                      //suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF62BB46)),
                      ),
                      //hintText: hinttext,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 45,
                  width: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                    //controller: controller,
                    obscureText: true,
                    //textInputAction: TextInputAction.next,
                    maxLines: 1,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),

                      //suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF62BB46))
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF62BB46)),
                      ),
                      //hintText: hinttext,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),

    );
  }
}
