import 'package:flutter/material.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';



class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("FavoriteView",style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
