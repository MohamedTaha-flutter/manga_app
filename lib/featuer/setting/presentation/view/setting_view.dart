import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/widget/custom_theme_switch_bttton.dart';
import 'package:mangaat_app/featuer/setting/presentation/widget/build_list_tile_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        children: [
          BuildListTile(
            icon: Icons.language,
            text: 'Change language',
            onTap: () {},
          ),
          BuildListTile(
            icon: Icons.contact_mail,
            text: 'Contact Us',
            onTap: () {},
          ),
          ChangeModeListTile(),
          BuildListTile(
            icon: Icons.share,
            text: 'Invite Your Friends',
            onTap: () {},
          ),
          BuildListTile(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {},
            showArrow: false,
          ),
        ],
      ),
    );
  }
}

class ChangeModeListTile extends StatelessWidget {
  const ChangeModeListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: Icon(Icons.nightlight, color: AppColor.mainColor, size: 24.sp),
          title: Text(
            "Change Mode ",
            style: TextStyle(fontSize: 16.sp, color: AppColor.white),
          ),
          trailing: SunMoonSwitch(),

        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Divider(thickness: 1, height: 1),
        ),
      ],
    );
  }
}
