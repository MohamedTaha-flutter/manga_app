import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';

class BuildListTile extends StatelessWidget {
  final IconData icon;

  final String text;

  final VoidCallback onTap;

  final bool showArrow;

  const BuildListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: AppColor.mainColor, size: 24.sp),
          title: Text(
            text,
            style: TextStyle(fontSize: 16.sp, color: AppColor.white),
          ),
          trailing: showArrow
              ? Icon(Icons.arrow_forward_ios,
                  color: AppColor.mainColor, size: 16.sp)
              : null,
          onTap: onTap,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Divider(thickness: 1, height: 1),
        ),
      ],
    );
  }
}
