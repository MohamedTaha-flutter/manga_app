import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon; // Optional: Add a suffix icon

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ), // Remove the outline border
        filled: true, // Optional: fill the background
        fillColor: Colors.white, // Optional: background color
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h), // Optional: padding
        suffixIcon: suffixIcon ,
      ),
      validator: validator,
    );
  }
}
