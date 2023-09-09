import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Center(
        child: SizedBox(
          height: 55.h,
          child: TextFormField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                      color:
                          Colors.black), // Border color for the focused state
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
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
    );
  }
}
