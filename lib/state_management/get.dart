import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/enum/enum.dart';
import 'package:flutter_test_app/model/product_model.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UiStateController extends GetxController {
  Rx<PlatformType> kPlatformType = PlatformType.desktop.obs;
  List<ProductData> kProdData = [];
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

  void shopFunction(BuildContext context) {
    scrollToPosition(context.percentHeight * 200);
  }

  void lastColFunction() {}
  void menFunction() {}
  void womenFunction() {}
  void chartFunction() {}
  void favFunction() {}

  Future<void> getProductData() async {
    final data = await rootBundle.loadString(kJsonProdData);

    kProdData = kGetProdDataFromJson(data);

    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getProductData();
    print("testing");
    super.onInit();
  }
}
