import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactDesktopScreen extends StatelessWidget {
  const ContactDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("re building");
    return Container(
      color: kBackGroundColor,
      height: context.percentHeight * 44.9,
      width: context.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: kBackGroundColor,
                child: Stack(children: [
                  // TODO: OVERFLOW ANG MGA LISTTILE
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: context.percentWidth * 3,
                          backgroundColor: kLogoBackColor,
                          child: FittedBox(
                              child: const Text("LOGO")
                                  .p(context.percentWidth * 1)),
                        ).marginOnly(
                            top: context.percentHeight * 3.61,
                            left: context.percentWidth * 4.027),
                        ListTile(
                          minLeadingWidth: 0,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                              style: kInterMediumBold.copyWith(
                                  fontSize: context.percentWidth * 1.0416),
                              " Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                          leading: const Icon(Icons.send),
                        ),
                        ListTile(
                          title: Text(
                              style: kInterMediumBold.copyWith(
                                  fontSize: context.percentWidth * 1.0416),
                              " Lorem ipsum "),
                          leading: const Icon(Icons.phone_android_outlined),
                        ),
                        ListTile(
                          title: Text(
                              style: kInterMediumBold.copyWith(
                                  fontSize: context.percentWidth * 1.0416),
                              " Lorem ipsum dolor sit amet"),
                          leading: const Icon(Icons.email_outlined),
                        )
                      ],
                    ),
                  ),
                ]),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: kBackGroundColor,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          columnWidget(
                                  context: context,
                                  kAlignment: Alignment.topLeft,
                                  kTitle: "Collection")
                              .marginOnly(
                            top: context.percentHeight * 5.17,
                            left: context.percentWidth * 0.694,
                          ),
                          columnWidget(
                                  context: context,
                                  kAlignment: Alignment.topCenter,
                                  kTitle: "INFORMATION")
                              .marginOnly(top: context.percentHeight * 5.17),
                          columnWidget(
                                  context: context,
                                  kAlignment: Alignment.topRight,
                                  kTitle: "MORE")
                              .marginOnly(
                            top: context.percentHeight * 5.17,
                          ),
                        ],
                      ).paddingOnly(right: context.percentWidth * 9.86),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Align columnWidget(
      {required BuildContext context,
      required String kTitle,
      required Alignment kAlignment}) {
    return Align(
      alignment: kAlignment,
      child: SizedBox(
        height: context.percentHeight * 22.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kTitle,
              style: kInterSemiBold.copyWith(
                  color: kBlack, fontSize: context.percentWidth * 1.25),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
            Text(
              "Lorem ipsum ",
              style: _styleText(context),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _styleText(BuildContext context) {
    return kInterMediumBold.copyWith(
        color: kTextColor, fontSize: context.percentWidth * 1.25);
  }
}
