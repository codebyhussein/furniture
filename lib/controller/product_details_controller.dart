import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  bool favorite = false;

  isFavorite() {
    favorite = !favorite;
    update();
  }
}
