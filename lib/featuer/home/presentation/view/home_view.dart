import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/home/presentation/widget/horizontal_item_list.dart';
import 'package:mangaat_app/featuer/home/presentation/widget/main_horizontal_item_list.dart';
import 'package:mangaat_app/featuer/home/presentation/widget/section_title.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'Most Popular'),
              MainItemList(),
              SectionTitle(title: 'Recent Release'),
              HorizontalItemList(),
              SectionTitle(title: 'Coming Soon'),
              HorizontalItemList(),
            ],
          ),
        ),
      ),
    );
  }
}






