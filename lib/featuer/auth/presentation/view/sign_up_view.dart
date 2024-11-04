import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/constant.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/auth_button.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/custom_tet_foem_field.dart';
import 'package:mangaat_app/featuer/layout/presentation/view/layout_view.dart';

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
        AuthButton(buttonName: 'SIGN UP ',onPressed: (){
          goTo(context, (context) => LayoutView());
        },),
      ],
    );
  }
}
