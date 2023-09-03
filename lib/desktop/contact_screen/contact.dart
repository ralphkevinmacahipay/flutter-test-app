import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
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
      height: context.percentHeight * 50,
      width: context.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: kBackGroundColor,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: context.percentHeight * 6.34,
                          backgroundColor: kLogoBackColor,
                          child: FittedBox(
                              child: const Text("LOGO")
                                  .p(context.percentHeight * 2.53)),
                        ).marginOnly(
                            top: context.percentHeight * 2.53,
                            left: context.percentWidth * 4.027),
                        SizedBox(
                          height: context.percentHeight * 4.199,
                        ),
                        const ListTileWidget(
                          kTitle:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          kIcon: Icons.send,
                        ).marginOnly(
                            // top: context.percentHeight * 1.53,
                            left: context.percentWidth * 4.027),
                        const ListTileWidget(
                          kTitle: "Lorem ipsum",
                          kIcon: Icons.phone_android_outlined,
                        ).marginOnly(
                            // top: context.percentHeight * 1.53,
                            left: context.percentWidth * 4.027),
                        const ListTileWidget(
                          kTitle: "Lorem ipsum dolor sit amet",
                          kIcon: Icons.email_outlined,
                        ).marginOnly(
                            // top: context.percentHeight * 1.53,
                            left: context.percentWidth * 4.027),
                        Row(
                          children: kContactIcon
                              .map((kIcon) => InkWell(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: kIconColor,
                                      radius: context.percentWidth * 1.4583,
                                      child: Image.asset(
                                        kIcon['icon_image'],
                                        width: context.percentWidth * 1.59,
                                        height: context.percentWidth * 1.59,
                                      ),
                                    ).marginOnly(
                                        right: context.percentWidth * 0.90),
                                  ))
                              .toList(),
                        ).marginOnly(left: context.percentWidth * 7.63)
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

class ListTileWidget extends StatelessWidget {
  final String
      kTitle; //" Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  final IconData kIcon; //  Icons.send,
  final double? kIconSIze;
  final double? kTextSize;

  const ListTileWidget({
    super.key,
    required this.kTitle,
    required this.kIcon,
    this.kIconSIze,
    this.kTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      title: Text(
          style: kInterMediumBold.copyWith(
              fontSize: kTextSize ?? context.percentWidth * 1.0416),
          kTitle),
      leading: Icon(
        kIcon,
        size: kIconSIze ?? context.percentWidth * 2.083,
      ),
    );
  }
}
