import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';
import 'package:two_poj/ui/views/auth/email_sent.dart';
import 'package:two_poj/ui/widgets/big_text.dart';
import 'package:two_poj/ui/widgets/button_auth_page.dart';
import 'package:two_poj/ui/widgets/custom_text_filed.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

class ResetPass extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color(0xFF62BB46),
                      borderRadius: BorderRadius.circular(18)
                    ),

                    child: Icon(Icons.arrow_back,color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      child: Image.asset('assets/img/flass.png')),

                ],
              ),
              SizedBox(height: 30,),
              BigText(text: 'Forgot Password?'),
              SizedBox(height: 10,),
              SmallText(text: 'Enter the email address associated with\n your account to recover password.'),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SmallText(text: 'Email Adress'),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                        TextInputType.text,
                        false,
                        _emailController,
                        Icons.email_outlined,
                        context,
                        'enter your email'),
                  ],
                ),
              ),
              SizedBox(height: 20,),


              Container(
                height: 50,
                width: 340,
                color: Color(0xFF62BB46),
                child: ElevatedButton(

                  onPressed:(){
                    Get.toNamed(emailsent);
                  },
                  child: Text('RECOVER PASSWORD',style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF62BB46)
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
