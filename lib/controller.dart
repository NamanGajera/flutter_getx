import 'package:get/get.dart';

class Controller extends GetxController {
  RxBool darkmode = false.obs;

  setdarkmode(bool value) {
    darkmode.value = value;
  }
}
