import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/constant.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/details/presentation/view/details_view.dart';

class MainItemList extends StatelessWidget {
  const MainItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.separated(
        separatorBuilder: (context, index)=>SizedBox(width: 10.w,),
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return MainItemListItem();
        },
      ),
    );
  }
}

class MainItemListItem extends StatelessWidget {
  const MainItemListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        goTo(context, (context)=> DetailsView());
      },
      child: Container(
        width: 300.w, // Adjust width as needed
        height: 200.h, // Adjust height as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(
            image: AssetImage('assets/images/one.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One Piece ',
                    style: AppTextStyle.boldTet18.copyWith(color:AppColor.white,fontSize: 25.sp),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 30.r,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '7.9',
                        style:AppTextStyle.boldText16.copyWith(color: Colors.white),
                      ),
                      Text(
                        ' Chapters: 1067',
                        style:AppTextStyle.boldText16.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
