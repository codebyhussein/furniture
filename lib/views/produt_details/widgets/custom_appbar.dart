import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/controller/product_details_controller.dart';
import 'package:furniture/views/home/home_screen.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductDetailsController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.to(() => const HomeScreen());
            },
            child: SvgPicture.asset('assets/icons/arrow-left.svg')),
        Row(
          children: [
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('assets/icons/share-1.svg')),
            SizedBox(width: 10.w),
            GetBuilder<ProductDetailsController>(
              builder: (controller) {
                return GestureDetector(
                    onTap: () {
                      productController.isFavorite();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      color: productController.favorite
                          ? Colors.red
                          : Colors.black,
                    ));
              },
            ),
          ],
        )
      ],
    );
  }
}
