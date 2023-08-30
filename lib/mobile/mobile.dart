import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';

import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/mobile/nav_mobile/mobile_nav.dart';
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
              )
            ],
          ),
          const MobileNavBar().marginOnly(top: context.percentHeight * 2.34)
        ],
      ),
    ));
  }
}
