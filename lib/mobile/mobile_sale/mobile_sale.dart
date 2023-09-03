import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileSaleWidget extends StatelessWidget {
  const MobileSaleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: context.percentHeight * 120, // adjust if scroll is apply
      width: context.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kWhite, boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(.25),
                    offset: const Offset(0, 4),
                    blurRadius: 4)
              ]),
              child: Text(
                "SALE",
                textAlign: TextAlign.center,
                style: kInterSemiBold.copyWith(
                    color: kLightRed, fontSize: context.percentWidth * 9.33),
              ),
            ),
            SizedBox(
              height:
                  context.percentHeight * 99.137, //context.percentHeight * 120,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: context.percentHeight * 2.95,
                    childAspectRatio: 1 / 1.6,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => SizedBox(
                    width: context.percentWidth * 44,
                    height: context.percentHeight * 10.9,
                    child: Stack(
                      children: [
                        // image
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: context.percentWidth * 37.6,
                            height: context.percentWidth * 53.33,
                            child: Image.asset(
                              kSampleJacket,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            color: kLigthBrown,
                            child: Text(
                              "15% OFF",
                              style: kInterMediumBold.copyWith(
                                  color: kWhite,
                                  fontSize: context.percentWidth * 2.66),
                            ).paddingSymmetric(
                                horizontal: context.percentWidth * 1.5,
                                vertical: context.percentWidth * 1.5),
                          ),
                        ).marginOnly(top: context.percentHeight * 0.98),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "LOREM IPSUM",
                                style: kInterSemiBold.copyWith(
                                    fontSize: context.percentWidth * 4),
                              ),
                              Text(
                                "Lorem ipsum",
                                style: kInterRegurlar.copyWith(
                                    fontSize: context.percentWidth * 3.46),
                              )
                            ])
                      ],
                    )),
              ).paddingSymmetric(horizontal: context.percentWidth * 9.6),
            ).paddingOnly(top: context.percentHeight * 6.650),
            ElevatedWidgetButton(
                    kOnPress: () {},
                    kName: "More",
                    kAlignment: Alignment.center,
                    kFontSize: context.percentWidth * 4.8,
                    kH: context.percentHeight * 3.94,
                    kW: context.percentWidth * 33.0,
                    kColor: kWhite)
                .paddingOnly(bottom: context.percentHeight * 5),
          ],
        ),
      ),
    );
  }
}
