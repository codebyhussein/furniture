// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ImageController extends StatefulWidget {
//   final String image;

//   const ImageController({Key? key, required this.image}) : super(key: key);

//   @override
//   _ImageControllerState createState() => _ImageControllerState();
// }

// class _ImageControllerState extends State<ImageController> {
//   double rotationAngle = 0.0;
//   double divisionFactor = 10.0;
//   void updateRotation(Offset currentPosition) {
//     // Calculate the change in horizontal position to determine rotation
//     double deltaX = currentPosition.dy;

//     // Rotate the image based on horizontal movement
//     setState(() {
//       rotationAngle += deltaX / 10000;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onHorizontalDragUpdate: (details) {
//           updateRotation(details.localPosition);
//         },
//         onPanUpdate: (details) {
//           // Update the image rotation based on horizontal touch movement
//           updateRotation(details.localPosition);
//         },
//         child: Transform.rotate(
//           angle: rotationAngle,
//           child: Image.asset(
//             widget.image,
//             width: 360.w,
//             height: 345.h,
//           ),
//         ),
//       ),
//     );
//   }
// }

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

  void updateRotation(Offset currentPosition) {
    // Calculate the change in horizontal position to determine rotation
    double deltaX = currentPosition.dx;

    // Rotate the image based on horizontal movement
    setState(() {
      rotationAngle += deltaX /
          100000; // Adjust the division factor to control rotation speed
    });
  }

  void updateScale(double scaleDelta) {
    // Update the image scale based on pinch-to-zoom gesture
    setState(() {
      scale += scaleDelta;
      // Ensure that the scale doesn't go below a minimum value to prevent it from becoming too small.
      if (scale < 0.1) {
        scale = 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Update the image rotation based on horizontal touch movement
          updateRotation(details.localPosition);
        },
        onScaleUpdate: (details) {
          // Update the image scale based on pinch-to-zoom gesture
          updateScale(details.scale - 1.0);
        },
        child: Transform.scale(
          scale: scale,
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
