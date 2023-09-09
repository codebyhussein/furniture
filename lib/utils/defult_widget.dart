import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/constants.dart';

class DefultWidget {
  static defultText({required String text}) => Text(
        text,
        style: TextStyle(
            fontSize: 20.sp, fontWeight: FontWeight.w400, color: kTextColor),
      );

  static defultTextCoust({required String text, required double fontSize}) =>
      Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: kgreenColor,
        ),
      );

  static defultTextdescription({required String text}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "Everett",
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff818181),
      ),
    );
  }
}
