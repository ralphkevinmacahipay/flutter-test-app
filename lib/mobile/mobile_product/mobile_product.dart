import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductMobileWidget extends StatelessWidget {
  const ProductMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackGroundColor,
      height: context.percentHeight * 134.97,
      width: context.width,
      child: ListView(
              children: kMobilePro
                  .map(
                    (kProdItem) => SizedBox(
                      height: context.percentHeight * 36.945,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              kProdItem['prod_item'],
                              height: context.percentHeight * 36.945,
                              width: context.percentWidth * 54.58,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ElevatedWidgetButton(
                                  kOnPress: () {},
                                  kName: kProdItem['button_title'],
                                  kAlignment: Alignment.bottomCenter,
                                  kFontSize: context.percentWidth * 4,
                                  kH: context.percentHeight * 3.200,
                                  kW: context.percentWidth * 34.042,
                                  kColor: kGrey)
                              .paddingOnly(
                                  bottom: context.percentHeight * 2.216)
                        ],
                      ),
                    ).marginOnly(bottom: context.percentHeight * 6),
                  )
                  .toList())
          .marginOnly(top: context.percentHeight * 6.5270),
    );
  }
}
