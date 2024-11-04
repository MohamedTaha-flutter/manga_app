import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/constant.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/auth_button.dart';
import 'package:mangaat_app/featuer/auth/presentation/widget/custom_tet_foem_field.dart';
import 'package:mangaat_app/featuer/layout/presentation/view/layout_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({
    super.key,
  });

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController signInEmailController = TextEditingController();

  final TextEditingController signInPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: signInEmailController,
          hintText: 'Enter email',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: signInPasswordController,
          hintText: 'Password',
          isPassword: true,
          suffixIcon: IconButton(
              onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined)),
        ),
        SizedBox(height: 20.h),
        AuthButton(
          buttonName: 'SIGN IN ',
          onPressed: () {
            goTo(context, (context) => LayoutView());
          },
        ),
      ],
    );
  }
}
