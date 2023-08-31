import 'package:flutter/material.dart';
import 'package:flutter_test_app/state_management/state_instance.dart';

enum PlatformType { mobile, tablet, desktop }

class EnumClassFunction {
  static checkEnumPlatForm(BoxConstraints constraints) {
    double screenWidth = constraints.maxWidth;
    if (screenWidth <= 414) {
      kUiStateInstance.kPlatformType.value = PlatformType.mobile;
    } else if (screenWidth <= 768 && screenWidth > 414) {
      kUiStateInstance.kPlatformType.value = PlatformType.tablet;
    } else {
      kUiStateInstance.kPlatformType.value = PlatformType.desktop;
    }
  }
}
