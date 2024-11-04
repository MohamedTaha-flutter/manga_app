import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';
import 'package:mangaat_app/featuer/favorite/presentation/view/favorite_view.dart';
import 'package:mangaat_app/featuer/home/presentation/view/home_view.dart';
import 'package:mangaat_app/featuer/profile/presentation/view/profile_view.dart';
import 'package:mangaat_app/featuer/video/presentation/view/vidio_view.dart';

import 'state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(InitialLayoutState());

  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  changeLayoutScreen(index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBarState());
  }

  List<Widget> views = [HomeView(), FavoriteView(), VideoView(), ProfileView()];

  List<BottomNavigationBarItem> item = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "",
      backgroundColor: AppColor.black,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "",
      backgroundColor: AppColor.black,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.play_circle_filled),
      label: "",
      backgroundColor: AppColor.black,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "",
      backgroundColor: AppColor.black,
    ),
  ];
}
