import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';

class AppTextStyle {
  static TextStyle boldText24 = TextStyle(
    fontSize: 24.sp, // Added .sp for responsive font size
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle boldText16 = TextStyle(
    fontSize: 16.sp, // Added .sp
    fontWeight: FontWeight.bold,
    color: Colors.grey[800],
  );

  static TextStyle boldTet18 = TextStyle(
    fontSize: 18.sp, // Added .sp
    fontWeight: FontWeight.w500,
    color: AppColor.gray,
  );

  static TextStyle text12 = TextStyle(
    fontSize: 12.sp, // Added .sp
    fontWeight: FontWeight.w500,
    color: AppColor.gray,
  );

}
