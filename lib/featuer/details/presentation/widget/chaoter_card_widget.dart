
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';

class ChapterCard extends StatelessWidget {
  final int chapterNumber;
  final String chapterTitle;
  final String thumbnailUrl;

  const ChapterCard({super.key,
    required this.chapterNumber,
    required this.chapterTitle,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: AppColor.mainColor, width: 1.5.h),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              thumbnailUrl,
              width: 50.w,
              height: 100.h,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chapter $chapterNumber',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  chapterTitle,
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    ;
  }
}
