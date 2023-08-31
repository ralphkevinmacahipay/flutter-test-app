import 'package:flutter/material.dart';
import 'package:flutter_test_app/desktop/home_desktop/home_desktop.dart';
import 'package:flutter_test_app/enum/enum.dart';
import 'package:flutter_test_app/mobile/mobile.dart';
import 'package:flutter_test_app/state_management/get.dart';
import 'package:flutter_test_app/state_management/state_instance.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
          EnumClassFunction.checkEnumPlatForm(constraints);

          switch (kUiStateInstance.kPlatformType.value) {
            case PlatformType.mobile:
              return const MobileScreen(); // use MobileScreen if available
            // TODO: Handle this case.
            case PlatformType.tablet:
              return const DesktopScreen(); // use TabletScreen if available

            // TODO: Handle this case.
            case PlatformType.desktop:
            default:
              return const DesktopScreen();

            // TODO: Handle this case.
          }
        },
      ),
    );
  }
}
