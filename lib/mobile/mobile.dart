import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/mobile/nav_mobile/mobile_nav.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: context.height,
                width: context.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kBackGroundImage), fit: BoxFit.fill)),
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      kJacketImage,
                      width: context.percentWidth * 71.2,
                      height: context.percentHeight * 24.26,
                    ),
                  ).marginOnly(top: context.percentHeight * 13.79),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      kHoodyPerson,
                      width: context.percentWidth * 52.53,
                      height: context.percentHeight * 36.21,
                    ),
                  ).marginOnly(left: context.percentWidth * 5),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      kHoodyJacketImage,
                      width: context.percentWidth * 49.86,
                      height: context.percentHeight * 32.38,
                    ),
                  ).marginOnly(
                      right: context.percentWidth * 3.73,
                      bottom: context.percentHeight * 6.40),
                  ElevatedWidgetButton(
                      kOnPress: () => shop(),
                      kName: "SHOP",
                      kAlignment: Alignment.center,
                      kFontSize: 24,
                      kH: context.percentHeight * 5.79,
                      kW: context.percentWidth * 47.9,
                      kColor: kWhite),
                ]),
              ),
              Container(
                color: kLignRed,
                height: context.height,
                width: context.width,
                child: const Center(child: Text("Product")),
              ),
              Container(
                color: kGrey,
                height: context.height,
                width: context.width,
                child: const Center(child: Text("Sale")),
              ),
              Container(
                color: kLigthBrown,
                height: context.height,
                width: context.width,
                child: const Center(child: Text("Contact")),
              ),
            ],
          ),
          const MobileNavBar().marginOnly(top: context.percentHeight * 2.34)
        ],
      ),
    ));
  }
}

void shop() {
  print("test");
}
