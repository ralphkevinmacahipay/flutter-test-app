import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/mobile/mobile_home/mobile_home.dart';
import 'package:flutter_test_app/mobile/mobile_product/mobile_product.dart';
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
              const ProductMobileWidget(),
              const HomeMobileWidget(),
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
