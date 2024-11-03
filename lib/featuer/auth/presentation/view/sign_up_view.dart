import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/custom_tet_foem_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
  });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController signUpEmailController = TextEditingController();

  final TextEditingController signUpPasswordController = TextEditingController();

  final TextEditingController signUpConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: signUpEmailController,
          hintText: 'Enter email',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: signUpPasswordController,
          hintText: 'Password',
          isPassword: true,
          suffixIcon: IconButton(onPressed:(){} , icon: Icon(Icons.remove_red_eye_outlined)),
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: signUpConfirmPasswordController,
          hintText: 'Confirm Password',
          isPassword: true,
          suffixIcon: IconButton(onPressed:(){} , icon: Icon(Icons.remove_red_eye_outlined)),
        ),
        SizedBox(height: 20.h),
        ElevatedButton(
          onPressed: () {
            // Handle sign-up logic here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            minimumSize: Size(double.infinity, 50.h),
          ),
          child: Text(
            'Sign Up',
            style: AppTextStyle.boldText24.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
