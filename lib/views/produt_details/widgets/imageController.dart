import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageController extends StatefulWidget {
  final String image;

  const ImageController({Key? key, required this.image}) : super(key: key);

  @override
  _ImageControllerState createState() => _ImageControllerState();
}

class _ImageControllerState extends State<ImageController> {
  double rotationAngle = 0.0;
  double scale = 1.0;
  Offset _offest = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _offest += details.delta;
          });
        },
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(_offest.dy * pi / 180)
            ..rotateY(_offest.dx * pi / 180),
          child: Transform.rotate(
            angle: rotationAngle,
            child: Image.asset(
              widget.image,
              width: 360.w,
              height: 345.h,
            ),
          ),
        ),
      ),
    );
  }
}
