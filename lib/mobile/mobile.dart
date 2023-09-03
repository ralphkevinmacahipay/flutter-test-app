import 'package:flutter/material.dart';
import 'package:flutter_test_app/mobile/contact_mobile/contact_mobile.dart';
import 'package:flutter_test_app/mobile/mobile_home/mobile_home.dart';
import 'package:flutter_test_app/mobile/mobile_product/mobile_product.dart';
import 'package:flutter_test_app/mobile/mobile_sale/mobile_sale.dart';
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
          Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            interactive: true,
            child: ListView(
              children: const [
                HomeMobileWidget(),
                ProductMobileWidget(),
                MobileSaleWidget(),
                ContactMobileWidget(),
              ],
            ),
          ),
          const MobileNavBar().marginOnly(top: context.percentHeight * 2.34)
        ],
      ),
    ));
  }
}
