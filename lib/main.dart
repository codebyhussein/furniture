import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/constants.dart';

import 'package:furniture/views/produt_details/product_details.dart';
import 'package:furniture/views/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(429, 929),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.antonTextTheme(Theme.of(context).textTheme),
            primaryColor: kPrimaryColor,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
