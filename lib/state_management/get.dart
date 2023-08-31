import 'package:flutter/material.dart';
import 'package:flutter_test_app/enum/enum.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UiStateController extends GetxController {
  Rx<PlatformType> kPlatformType = PlatformType.desktop.obs;
  static UiStateController get instance => Get.find();

  // scroll animation
  final ScrollController kListScrollController = ScrollController();
  void scrollToPosition(double position) {
    kListScrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void signInFunction() {}
  void helpFunction() {}
  void joinUsFunction() {}
  void homeFuntion(BuildContext context) {
    scrollToPosition(context.percentHeight);
  }

  void newArrivalFunction(BuildContext context) {
    scrollToPosition(context.percentHeight * 100);
  }

  void shopFunction() {}
  void lastColFunction() {}
  void menFunction() {}
  void womenFunction() {}
  void chartFunction() {}
  void favFunction() {}
}
