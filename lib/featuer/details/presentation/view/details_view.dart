import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/details/presentation/widget/chaoter_card_widget.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/one.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,),
                          onPressed: ()
                          {
                            Navigator.pop(context);
                          },
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.favorite_border, color: Colors.white,size: 30,),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white,size: 30,),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    child: Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(20.r)
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'One Piece',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text(
                                '7.9',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10.w),
                              Icon(Icons.visibility, color: Colors.white),
                              Text(
                                '89,200',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Syspnosis',
                            style:AppTextStyle.boldText16,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                            style:AppTextStyle.boldText16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Chapters',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                  separatorBuilder: (context,index)=>SizedBox(height: 5.h,),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10, // Example count
                  itemBuilder: (context, index) {
                    return ChapterCard(
                      chapterNumber: 1067 - index,
                      chapterTitle: 'The Will of Ohara',
                      thumbnailUrl: 'assets/images/manga.jpg',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

