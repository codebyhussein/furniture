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
  double divisionFactor = 10.0;
  void updateRotation(Offset currentPosition) {
    // Calculate the change in horizontal position to determine rotation
    double deltaX = currentPosition.dy;

    // Rotate the image based on horizontal movement
    setState(() {
      rotationAngle += deltaX / 10000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          updateRotation(details.localPosition);
        },
        onPanUpdate: (details) {
          // Update the image rotation based on horizontal touch movement
          updateRotation(details.localPosition);
        },
        child: Transform.rotate(
          angle: rotationAngle,
          child: Image.asset(
            widget.image,
            width: 360.w,
            height: 345.h,
          ),
        ),
      ),
    );
  }
}
