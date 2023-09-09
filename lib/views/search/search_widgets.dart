import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/utils/constants.dart';
import 'package:furniture/views/home/home_screen.dart';
import 'package:furniture/views/layoutScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          SizedBox(
            height: 45.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: GestureDetector(
                onTap: () {
                  Get.to(() => const LayoutScreen());
                },
                child: SvgPicture.asset('assets/icons/arrow-left.svg')),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              height: 55.h,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                          color: Colors
                              .black), // Border color for the focused state
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: const Icon(
                      IconlyLight.search,
                      color: Colors.white,
                    ),
                    hintText: 'search',
                    hintStyle:
                        GoogleFonts.abel(color: Colors.white, fontSize: 15.sp)),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
