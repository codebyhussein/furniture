import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/model/product.dart';
import 'package:furniture/utils/constants.dart';
import 'package:furniture/utils/defult_widget.dart';
import 'package:furniture/views/home/widgets/Discount_poster.dart';
import 'package:furniture/views/home/widgets/build_appbar.dart';
import 'package:furniture/views/home/widgets/item_builder.dart';
import 'package:furniture/views/home/widgets/recently_builder.dart';
import 'package:furniture/views/produt_details/product_details.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45.h,
              ),
              const BuildAppbar(),
              SizedBox(
                height: 27.h,
              ),
              DefultWidget.defultText(text: 'Hot Deals'),
              SizedBox(
                height: 17.h,
              ),
              const DiscountBoster(),
              SizedBox(
                height: 27.h,
              ),
              DefultWidget.defultText(text: 'new Arrivals'),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                height: 353.h,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.to(() => ProductDetails(
                                  product: newProducts[index],
                                  index: index,
                                ));
                          },
                          child: ItemBuilder(
                            index: index,
                            product: newProducts[index],
                          ));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20.w,
                      );
                    },
                    itemCount: newProducts.length),
              ),
              SizedBox(
                height: 27.h,
              ),
              DefultWidget.defultText(
                text: "Recently Viewed",
              ),
              SizedBox(
                height: 27.h,
              ),
              SizedBox(
                height: 353.h,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.to(() => ProductDetails(
                                  product: recentlyProducts[index],
                                  index: index,
                                ));
                          },
                          child: RecentlyBuilder(
                            product: recentlyProducts[index],
                            index: index,
                          ));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                    itemCount: recentlyProducts.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
