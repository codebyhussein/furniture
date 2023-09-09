import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/model/product.dart';
import 'package:furniture/utils/defult_widget.dart';

class RecentlyBuilder extends StatelessWidget {
  RecentlyBuilder({super.key, required this.index, required this.product});
  final Product product;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Container(
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
                child: Image.asset(product.image!)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  product.title!,
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
                  text: "\$${product.price}",
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
      ),
    );
  }
}
