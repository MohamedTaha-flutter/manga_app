import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/auth/presentation/view/sign_in_view.dart';
import 'package:mangaat_app/featuer/auth/presentation/view/sign_up_view.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/custom_tet_foem_field.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/social_media_icon.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0.w, vertical: 50.h),
                      child: Column(
                        children: [
                          ToggleButtons(
                            fillColor: AppColor.mainColor,
                            borderRadius: BorderRadius.circular(20.r),
                            isSelected: [isLogin, !isLogin],
                            onPressed: (index) {
                              setState(() {
                                isLogin = index == 0;
                              });
                            },
                            selectedColor: Colors.white,
                            color: Colors.black,
                            children: [
                              _buildToggleButtonChild('Sign IN'),
                              _buildToggleButtonChild('Sign Up'),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          isLogin ? SignInView() : SignUpView(),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text("oR"),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialMediaIcon(
                                  imagePath: 'assets/images/facebook_logo.png'),
                              SizedBox(width: 20.w),
                              SocialMediaIcon(
                                  imagePath: 'assets/images/google_logo.png'),
                              SizedBox(width: 20.w),
                              SocialMediaIcon(
                                  imagePath: 'assets/images/twiter_logo.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToggleButtonChild(String text) {
    return Container(
      width: 120.w,
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyle.text12.copyWith(fontSize: 16),
      ),
    );
  }
}
