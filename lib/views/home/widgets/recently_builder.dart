import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/utils/defult_widget.dart';

class RecentlyBuilder extends StatelessWidget {
  const RecentlyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 108.sp,
      width: 374.sp,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 231, 231, 222),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromARGB(255, 236, 236, 236),
              ),
              height: 89.h,
              width: 107.w,
              child: Image.asset('assets/images/chair3.png')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Leatherette Sofa",
                style: TextStyle(
                  fontFamily: "Everett",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff262525),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              DefultWidget.defultTextCoust(
                fontSize: 20.sp,
                text: "\$15.18",
              ),
            ],
          ),
          GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/cart-4.svg',
                height: 38.h,
                width: 38.w,
              )),
        ],
      ),
    );
  }
}
