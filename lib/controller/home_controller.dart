import 'package:get/get.dart';

class HomeController extends GetxController {
  bool favorite = false;

  isFavorite() {
    favorite = !favorite;
    update();
  }
}
