import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextRoutation extends StatelessWidget {
  const TextRoutation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.arrow_left_outlined,
          size: 18,
        ),
        const Icon(
          Icons.arrow_left_outlined,
          size: 18,
        ),
        SizedBox(
          width: 5.w,
        ),
        const Text('360\nView'),
        SizedBox(
          width: 5.w,
        ),
        const Icon(
          Icons.arrow_right_outlined,
          size: 18,
        ),
        const Icon(
          Icons.arrow_right_outlined,
          size: 18,
        ),
      ],
    );
  }
}
