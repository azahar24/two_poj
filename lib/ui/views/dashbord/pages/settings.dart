import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_poj/ui/widgets/big_text.dart';
import 'package:two_poj/ui/widgets/medium_text.dart';
import 'package:two_poj/ui/widgets/small_text.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08083D),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text('Account Settings',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
            ///
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Center(child: Text('OP',style: TextStyle(
                        color: Colors.white
                    ),)),
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF3417A8),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ogar Precious',style: TextStyle(
                          fontSize: 14,
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,))
                ],
              ),
            ),
            SizedBox(height: 10,),
            ///
            Container(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: 'general'),
                    MediamTextIcon(text: 'Bank Accounts', icon: Icons.arrow_forward_ios),
                    MediamTextIcon(text: 'My Cards', icon: Icons.arrow_forward_ios),
                    MediamTextIcon(text: 'Change Transaction Pin', icon: Icons.arrow_forward_ios),
                    MediamTextIcon(text: 'Security', icon: Icons.arrow_forward_ios),
                    MediamTextIcon(text: 'Documents', icon: Icons.arrow_forward_ios),
                    SizedBox(height: 15,),
                    SmallText(text: 'Preferences'),
                    MediamTextIcon(text: 'Invite Your Friends', icon: Icons.arrow_forward_ios),
                    MediamTextIcon(text: 'Report a Bug', icon: Icons.arrow_forward_ios),
                    SizedBox(height: 15,),
                    SmallText(text: 'Notifications'),
                    MediamTextIcon(text: 'Get real-time updates', icon: Icons.arrow_forward_ios),
                  ],
                ),
              ),

              height: 567.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
