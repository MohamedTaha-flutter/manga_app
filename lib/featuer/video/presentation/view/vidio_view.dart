import 'package:flutter/material.dart';
import 'package:mangaat_app/core/constant/colors_style.dart';



class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("VideoView",style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
