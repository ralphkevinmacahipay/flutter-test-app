import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SalesDesktopScreen extends StatelessWidget {
  const SalesDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: context.height,
      width: context.width,
      child: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: context.percentHeight * 8.51,
              decoration: BoxDecoration(color: kWhite, boxShadow: [
                BoxShadow(
                  color: kBlack.withOpacity(.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ]),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: kHeaderSale
                      .map(
                        (kItem) => Text(
                          kItem,
                          style: kInterSemiBold.copyWith(
                              fontSize: context.percentWidth * 3,
                              color: kLignRed),
                        ),
                      )
                      .toList())),
        ),
        Align(
            alignment: Alignment.center,
            child: Container(
              color: kWhite,
              height: context.percentHeight * 75.349,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 73),
                itemCount: kProdSaleList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .45 / .75, // w:h
                  mainAxisSpacing: 15,
                  crossAxisSpacing: context.percentWidth * 4.65,
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) => Stack(children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        kProdSaleList[index]['image'],
                      )).marginAll(15),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.percentWidth * 0.55,
                            vertical: context.percentWidth * 0.69),
                        decoration: const BoxDecoration(
                          color: kLigthBrown,
                        ),
                        child: Text(
                          "15% OFF",
                          style: kInterMediumBold.copyWith(
                              color: kWhite,
                              fontSize: context.percentWidth * 1.25),
                        )).marginOnly(top: context.percentWidth * 2.013),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                      titleTextStyle: kInterSemiBold.copyWith(
                          fontSize: context.percentWidth * 1.25),
                      subtitleTextStyle: kInterRegurlar.copyWith(
                          fontSize: context.percentWidth * 1.25),
                      title: const Text("LOREM IPSUM"),
                      subtitle: const Text("Lorem ipsum"),
                    ),
                  )
                ]),
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedWidgetButton(
              kOnPress: () {},
              kName: "More",
              kAlignment: Alignment.bottomCenter,
              kFontSize: context.percentWidth * 1.66,
              kH: context.percentHeight * 3.95,
              kW: context.percentWidth * 15.13,
              kColor: kWhite),
        ).marginOnly(bottom: context.percentHeight * 5),
      ]),
    );
  }
}
