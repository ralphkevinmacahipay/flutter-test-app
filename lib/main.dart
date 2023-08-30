import 'package:flutter/material.dart';
import 'package:flutter_test_app/desktop/home_desktop/home_desktop.dart';
import 'package:flutter_test_app/mobile/mobile.dart';
import 'package:flutter_test_app/state_management/get.dart';
import 'package:flutter_test_app/tablet/tablet.dart';
import 'package:get/get.dart';

void main() {
  Get.put(UiStateController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exam',
      home: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          //414 iphone XR
          if (screenWidth <= 414) {
            return const MobileScreen();
          } else if (screenWidth <= 768 && screenWidth > 414) {
            return const TabletScreen();
          }
          return const DesktopScreen();
        },
      ),
    );
  }
}
