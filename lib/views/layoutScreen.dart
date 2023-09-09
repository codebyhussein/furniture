import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/constants.dart';
import 'package:furniture/views/home/home_screen.dart';
import 'package:furniture/views/search/search_widgets.dart';
import 'package:iconly/iconly.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> Screen = [
    const HomeScreen(),
    const SearchWidgets(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
//screen
          Screen[currentindex],

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3,
                    vertical: kDefaultPadding / 2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff1C1C25)
                        .withOpacity(0.8), // Adjust opacity as needed
                  ),
                  height: 80.h, // Adjust the height as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(
                          IconlyBold.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            currentindex = 0;
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          IconlyLight.search,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            currentindex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
