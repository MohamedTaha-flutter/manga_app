import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangaat_app/featuer/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // Set the design size for responsive design
      minTextAdapt: true, // Enable text adaptation
      splitScreenMode: true, // Enable split-screen mode for tablets
      builder: (context, child) {
        return MaterialApp(
          title: 'Manga App',
          themeMode: ThemeMode.light, // Set the theme mode to light
          theme: ThemeData.light(), // Define light theme
          darkTheme: ThemeData.dark(), // Define dark theme
          debugShowCheckedModeBanner: false, // Hide debug banner
          home: const SplashView(), // Set the home widget
        );
      },
    );
  }
}
