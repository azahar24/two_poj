import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:two_poj/ui/widgets/big_text.dart';
import 'package:two_poj/ui/widgets/button_auth_page.dart';
import 'package:two_poj/ui/widgets/custom_text_filed.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../../../const/app_colors.dart';
import '../../../route/route.dart';

class Login extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                        child: Image.asset('assets/img/flass.png')),

                  ],
                ),
              ),
              BigText(text: 'Welcome Back!',),
              SizedBox(height: 10,),
              SmallText(text: 'Enter your details to continue'),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SmallText(text: 'Email Adddress'),
                    SizedBox(height: 5,),
                    CustomTextField(
                        TextInputType.text,
                        false,
                        _emailController,
                        Icons.email_outlined,
                        context,
                        'enter your email'),
                    SizedBox(height: 10,),
                    SmallText(text: 'Password'),
                    SizedBox(height: 5,),

                    TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                      controller: _passwordController,
                      obscureText: true,
                      //textInputAction: TextInputAction.next,
                      maxLines: 1,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFFC5C5C5))
                        ),
                        prefixIcon: Icon(Icons.lock_outline,color: AppColors.violetColor,size: 18.w,),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black,size: 18.w,),

                        //enabledBorder: const UnderlineInputBorder(
                        // borderSide: BorderSide(color: Colors.black54),
                        // ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF046AE1)),
                        ),
                        hintText: 'enter your Password',
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        errorStyle: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.toNamed(resetPassword);
                          },
                          child: Text('Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF62BB46),
                            fontSize: 12,

                          ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonAuthPage(text: 'LOGIN',onpressed: (){
                          Get.toNamed(bottomnavcon);

                        },)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallText(text: 'Need an Account? Try Sutraq'),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Center(child: Image.asset('assets/img/fingerprint_24px.png')),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tap to use fingerprint',
                          style: TextStyle(
                            color: Color(0xFF62BB46),
                            fontSize: 12,

                          ),
                        )
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
