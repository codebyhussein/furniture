import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:furniture/utils/constants.dart';
import 'package:furniture/views/home/home_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Text(
              'Elegant\nsimple\nFurnitures.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: const Color.fromRGBO(38, 37, 37, 1),
                fontSize: 54.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/splash.png'),
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Affordable home furniture\ndesigns & ideas.",
                  style: TextStyle(
                    fontFamily: "Everett",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff645f57),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: Container(
                    height: 114.h,
                    width: 114.w,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [kDefaultShadow],
                        shape: BoxShape.circle),
                    child: const Center(
                        child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
