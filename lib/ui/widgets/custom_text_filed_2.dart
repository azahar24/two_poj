import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../const/app_colors.dart';

Widget CustomTextField2(
    keyboardtype,
    obscuretext,
    controller,
    suffixicon,
    BuildContext context,


    ) {
  return AspectRatio(
    aspectRatio: 4.7,
    child: Container(
      child: TextFormField(
        keyboardType: keyboardtype,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        controller: controller,
        obscureText: obscuretext,
        //textInputAction: TextInputAction.next,
        maxLines: 1,

        decoration: InputDecoration(


          suffixIcon: Icon(suffixicon,color: AppColors.violetColor,size: 18.w,),


          enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          ),
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Color(0xFF046AE1)),
          // ),
         // hintText: hinttext,
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
    ),
  );
}
