import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 10.h,top: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:AppTextStyle.boldText24,
          ),
          Text(
            "See more",
            style: AppTextStyle.boldText16.copyWith(color: AppColor.mainColor),
          ),
        ],
      ),
    );
  }
}
