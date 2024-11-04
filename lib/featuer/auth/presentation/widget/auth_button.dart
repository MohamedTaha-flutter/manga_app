import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';


class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.buttonName,
    this.onPressed,
  });

  final String buttonName;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        minimumSize: Size(double.infinity, 50.h),
      ),
      child: Text(
        buttonName,
        style: AppTextStyle.boldText24.copyWith(color: Colors.white),
      ),
    );
  }
}
