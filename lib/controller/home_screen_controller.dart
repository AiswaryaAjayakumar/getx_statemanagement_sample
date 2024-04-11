// ignore_for_file: avoid_print

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class HomeScreenController extends GetxController {
  int count = 0;
  void increment() {
    count++;
    //to view in ui
    update();
    print(count);
  }

  void decrement() {
    count--;
    update();
    print(count);
  }

  RxInt num = 0.obs;
  void incrementNum() {
    num.value++;
    print(num.value);
  }
}
