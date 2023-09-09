import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountBoster extends StatelessWidget {
  const DiscountBoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.sp,
      width: 383.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffD0BEA2),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/chair1.png',
            height: 157.h,
            width: 177.w,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18.h,
              ),
              const Text('Upto 75%'),
              Text(
                'Discount',
                style: GoogleFonts.montserrat(),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/poster.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'starts\nMidnight',
                        style: GoogleFonts.montserrat(),
                      ),
                      const Text('16 March'),
                    ],
                  )
                ],
              )
              // SvgPicture.asset(''),
            ],
          )
        ],
      ),
    );
  }
}
