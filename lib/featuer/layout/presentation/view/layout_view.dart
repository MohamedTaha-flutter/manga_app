import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/core/constant/test_style.dart';
import 'package:mangaat_app/featuer/layout/presentation/controller/cubit.dart';
import 'package:mangaat_app/featuer/layout/presentation/controller/state.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            backgroundColor: AppColor.black,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: AppColor.white,
              ),
              backgroundColor: AppColor.black,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.mainColor,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      SizedBox(width: 10.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning",
                              style: AppTextStyle.text12
                                  .copyWith(fontSize: 15.sp)),
                          Text("Mohammed Taha", style: AppTextStyle.boldTet18),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeLayoutScreen(index);
              },
              type: BottomNavigationBarType.shifting,
              items: cubit.item,
              backgroundColor: AppColor.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
            ),
            body: cubit.views[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
