import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mangaat_app/core/constant/constant.dart';
import 'package:mangaat_app/featuer/auth/presentation/view/auth_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    build(context);
    time();
  }

  void time() {
    Timer(
        Duration(
          seconds: 2,
        ),
        () => goToAndReplacement(context, (context) => AuthView()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/sp.webp",
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
