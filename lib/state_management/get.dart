import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UiStateController extends GetxController {
  static UiStateController get instance => Get.find();

  void signInFunction() {}
  void helpFunction() {}
  void joinUsFunction() {}
  void homeFuntion() {}
  void newArrivalFunction() {}
  void shopFunction() {}
  void lastColFunction() {}
  void menFunction() {}
  void womenFunction() {}
  void chartFunction() {}
  void favFunction(BuildContext context) {
    print(
        "percentHeight : ${context.percentHeight * 100} percentWidth: ${context.percentWidth * 100}");
  }
}
