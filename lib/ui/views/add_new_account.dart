import 'package:flutter/material.dart';
import 'package:two_poj/ui/widgets/custom_text_filed_aza.dart';
import 'package:two_poj/ui/widgets/custom_text_fileds.dart';
import 'package:two_poj/ui/widgets/mediam_texts.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

import '../widgets/big_text.dart';
import '../widgets/button_auth_page.dart';

class AddNewAccount extends StatelessWidget {
  const AddNewAccount({Key? key}) : super(key: key);

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
                     child: Icon(Icons.arrow_back_outlined,color: Colors.white,),
                     decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(15)
                     ),
                   ),
                   SizedBox(width: 60,),
                   MediamText(text: 'Add New Account')
                 ],
               ),
             ),
             SizedBox(height: 20,),
             SmallText(text: 'Ensure to fill in the neccessary details\n of the recipient in order to continue'),
             SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.all(30),
               child: CustomTextFileds_suf(
                   hinttext: 'Choose Currency',
                  suffixicon: Icons.arrow_drop_down_circle_sharp,
                  //prefixicon: Icons.add_call,

               ),
             ),
             ButtonAuthPage(text: 'CONFRIM', onpressed: (){},)
           ],
         ),
       ),
    );
  }
}
