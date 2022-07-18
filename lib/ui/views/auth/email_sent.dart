import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:two_poj/route/route.dart';
import 'package:two_poj/ui/widgets/big_text.dart';
import 'package:two_poj/ui/widgets/button_auth_page.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20)
            ),
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 80,
                    child: Image.asset('assets/img/inbox.png')),
                SizedBox(height: 35,),
                BigText(text: 'Check your Inbox!'),
                SizedBox(height: 25,),
                SmallText(text: 'An email has been sent to you.\n Click the link to reset your\n password.'),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  width: 250,
                  color: Color(0xFF62BB46),
                  child: ElevatedButton(

                    onPressed:(){
                      Get.toNamed(emailfind);
                    },
                    child: Text('CHECK MAIL',style: TextStyle(
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

          )
        ],
      ),
    );
  }
}
