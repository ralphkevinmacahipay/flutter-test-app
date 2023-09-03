import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDesktopScreen extends StatelessWidget {
  const ProductDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kBackGroundColor,
        height: context.height,
        width: double.infinity,
        child: SizedBox(
          width: double.infinity,
          height: 58.59,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: context.percentHeight * 58.59,
                  child: Stack(children: [
                    ProductItemWidget(
                        kButtonTitle: "Sweatshirts",
                        kImage: kSampleJacket,
                        kAlignmentl: Alignment.centerLeft,
                        kOnPress: () {}),
                    ProductItemWidget(
                        kButtonTitle: "Hoodies",
                        kImage: kSamplePerson,
                        kAlignmentl: Alignment.center,
                        kOnPress: () {}),
                    ProductItemWidget(
                        kButtonTitle: "Pair",
                        kImage: kSampleJacket,
                        kAlignmentl: Alignment.centerRight,
                        kOnPress: () {}),
                  ]),
                ),
              ).marginOnly(top: context.percentHeight * 15),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  kLorem,
                  style: kInterMediumBold.copyWith(
                      fontSize: context.percentWidth * 1.38),
                  textAlign: TextAlign.center,
                ),
              )
                  .marginSymmetric(horizontal: context.percentWidth * 20.52)
                  .marginOnly(bottom: context.percentHeight * 5.51)
              // .paddingSymmetric(
              //     vertical: context.percentHeight * 5)
            ],
          ),
        ));
  }
}

class ProductItemWidget extends StatelessWidget {
  final String kButtonTitle; //""
  final Function() kOnPress;
  final String kImage; //
  final Alignment kAlignmentl; //Alignment.centerLeft
  const ProductItemWidget({
    super.key,
    required this.kButtonTitle,
    required this.kOnPress,
    required this.kImage,
    required this.kAlignmentl,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: kAlignmentl,
        child: Container(
          width: context.percentWidth * 25.40,
          height: context.percentWidth * 41.66,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  kImage,
                ),
                fit: BoxFit.fill),
          ),
          child: ElevatedWidgetButton(
                  kOnPress: kOnPress,
                  kName: kButtonTitle,
                  kAlignment: Alignment.bottomCenter,
                  kFontSize: context.percentWidth * 1.6,
                  kH: context.percentWidth * 3.541,
                  kW: context.percentWidth * 13.75,
                  kColor: kLogoBackColor)
              .paddingOnly(bottom: context.percentHeight * 3.80),
        )).marginAll(15);
  }
}
