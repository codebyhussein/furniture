import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/utils/constants.dart';

class BuildAppbar extends StatelessWidget {
  const BuildAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/menu-hamburger.svg',
              height: 38.h,
              width: 38.w,
            )),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/cart-4.svg',
                height: 38.h,
                width: 38.w,
              )),
        ),
      ],
    );
  }
}
