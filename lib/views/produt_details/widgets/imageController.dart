import 'package:flutter/material.dart';

import 'package:furniture/utils/constants.dart';
import 'package:photo_view/photo_view.dart';

class ImageController extends StatefulWidget {
  final String image;

  const ImageController({Key? key, required this.image}) : super(key: key);

  @override
  _ImageControllerState createState() => _ImageControllerState();
}

class _ImageControllerState extends State<ImageController> {
  PhotoViewController? controller;
  late double scaleCopy;

  @override
  void initState() {
    super.initState();
    controller = PhotoViewController()..outputStateStream.listen(listener);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  void listener(PhotoViewControllerValue value) {
    setState(() {
      scaleCopy = value.scale!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: PhotoView(
            filterQuality: FilterQuality.high,
            tightMode: true,
            gestureDetectorBehavior: HitTestBehavior.opaque,
            enableRotation: true,
            enablePanAlways: true,
            backgroundDecoration: const BoxDecoration(color: kBackgroundColor),
            imageProvider: AssetImage(widget.image),
            controller: controller,
          )),
          // Text("Scale applied: $scaleCopy")
        ],
      ),
    );
  }
}
