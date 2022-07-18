import 'package:flutter/material.dart';

class EmailFind extends StatelessWidget {
  const EmailFind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 176,
                    child: Image.asset('assets/img/idea1.png')),

              ],
            ),
            SizedBox(height: 380,),
            Container(
              height: 50,
              width: 300,
              color: Color(0xFF62BB46),
              child: ElevatedButton(

                onPressed:(){
                  //Get.toNamed(emailfind);
                },
                child: Text('Got IT!',style: TextStyle(
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
    );
  }
}
