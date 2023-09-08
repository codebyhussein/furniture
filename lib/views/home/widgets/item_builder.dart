import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/controller/home_controller.dart';
import 'package:furniture/utils/defult_widget.dart';
import 'package:get/get.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(HomeController());
    return Container(
      height: 353.h,
      width: 302.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color.fromARGB(255, 231, 231, 222)),
      child: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: GetBuilder<HomeController>(
                builder: (Controller) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        height: 38.h,
                        width: 38.w,
                        child: GestureDetector(
                          onTap: () {
                            Controller.isFavorite();
                          },
                          child: Icon(
                            Icons.favorite,
                            color:
                                Controller.favorite ? Colors.red : Colors.white,
                            size: 23,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Center(child: Image.asset('assets/images/chair2.png')),
            Text(
              "Leatherette Sofa",
              style: TextStyle(
                fontFamily: "Everett",
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff262525),
              ),
            ),
            DefultWidget.defultTextCoust(
              text: "\$15.18",
            ),
          ],
        ),
      ),
    );
  }
}
