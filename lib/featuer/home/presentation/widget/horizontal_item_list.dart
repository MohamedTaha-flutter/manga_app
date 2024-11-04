import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalItemList extends StatelessWidget {
  const HorizontalItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return Container(
            width: 150.w,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/anime.jpg'),
                // Placeholder image
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title $index',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '7.9 ★  Chapters: 167',
                        style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
