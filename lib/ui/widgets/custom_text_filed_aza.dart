import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

class CustomTextFileds extends StatelessWidget {
  String hinttext;
  IconData? prefixicon;
  IconData? suffixicon;
  bool obscuretext = false;
  TextInputType? keyboardtype;
  TextEditingController? controller;
  CustomTextFileds({required this.hinttext,this.suffixicon,this.prefixicon});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.7,
      child: Container(
        child: TextFormField(
          keyboardType: keyboardtype,
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
          controller: controller,
          obscureText: obscuretext,
          //textInputAction: TextInputAction.next,
          maxLines: 1,

          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFFC5C5C5))
            ),
            prefixIcon: Icon(prefixicon,color: AppColors.violetColor,size: 18.w,),
            suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),

            //enabledBorder: const UnderlineInputBorder(
            // borderSide: BorderSide(color: Colors.black54),
            // ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF046AE1)),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            errorStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
