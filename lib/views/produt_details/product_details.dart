import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/model/product.dart';
import 'package:furniture/utils/constants.dart';
import 'package:furniture/utils/defult_widget.dart';
import 'package:furniture/views/home/home_screen.dart';
import 'package:furniture/views/produt_details/widgets/imageController.dart';

import 'package:furniture/views/produt_details/widgets/custom_appbar.dart';
import 'package:furniture/views/produt_details/widgets/text_routation.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.product, required this.index});
  final Product product;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.h,
                ),
                const CustomAppbar(),
                SizedBox(
                  height: 27.h,
                ),
                DefultWidget.defultText(text: product.title!),
                SizedBox(
                  height: 26.h,
                ),
                ImageController(
                  image: product.image!,
                ),
                // Image.asset(),
                const TextRoutation(),
                SizedBox(
                  height: 48.h,
                ),
                SizedBox(
                  height: 69.h,
                  width: 348.w,
                  child: Text(
                    product.description!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 35.h,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      DefultWidget.defultTextdescription(
                          text: product.starNumber!.toString()),
                      const VerticalDivider(
                        thickness: 2,
                        width: 20,
                        color: Color(0xffCEBB9E),
                      ),
                      DefultWidget.defultTextdescription(
                          text: '${product.reviewCount} Reviews'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 180.h,
                width: double.infinity,
                color: kBackgroundColor,
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  height: 150.h,
                  width: 374.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 231, 231, 222)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, top: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Offers',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(
                          thickness: 1,
                          height: 1,
                          color: Color(0xffCEBB9E),
                        ),
                        Text(
                          'Citibank Offer',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 28.h,
                          width: 328.w,
                          child: DefultWidget.defultTextdescription(
                              text: product.discount!),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/images/backgroung.svg',
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 30,
                left: 45,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/icons/cart-4.svg',
                          height: 38.h,
                          width: 38.w,
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    DefultWidget.defultTextCoust(
                        fontSize: 30.sp, text: '\$${product.price}'),
                  ],
                ),
              ),
              Positioned(
                bottom: 27,
                right: 27,
                child: Container(
                  height: 114.h,
                  width: 114.w,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      boxShadow: [kDefaultShadow],
                      shape: BoxShape.circle),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Get.snackbar('', 'Watting ....................',
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2));
                      Get.to(() => const HomeScreen());
                      // Get.showSnackbar(const GetSnackBar(
                      //   snackPosition: SnackPosition.BOTTOM,
                      //   messageText: Text(
                      //     'Watting ....................',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ));
                    },
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//BoxShadow