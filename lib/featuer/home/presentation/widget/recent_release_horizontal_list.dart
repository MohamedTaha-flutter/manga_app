import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/constant.dart';
import 'package:mangaat_app/featuer/details/presentation/view/details_view.dart';

class RecentRelease extends StatelessWidget {
  const RecentRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return RecentReleaseItem();
        },
      ),
    );
  }
}

class RecentReleaseItem extends StatelessWidget {
  const RecentReleaseItem({
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
              color: Colors.black.withOpacity(0.6),
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Title ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 25.r,
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
