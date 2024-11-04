import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/featuer/favorite/presentation/widget/favorite_item_list.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0.w,
            childAspectRatio: 0.7,
          ),
          itemCount: 20, // Total number of items
          itemBuilder: (context, index) {
            return FavoriteWidget();
          },
        ),
      ),
    );
  }
}
