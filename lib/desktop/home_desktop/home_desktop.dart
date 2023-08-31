import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/desktop/home_desktop/nav_bar_item.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:flutter_test_app/state_management/state_instance.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: ListView(
              controller: kUiStateInstance.kListScrollController,
              children: [
                const HomeScreenWidget(),
                Container(
                    color: kBackGroundColor,
                    height: context.height,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: double.infinity,
                            height: context.percentHeight * 58.59,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    kSampleJacket,
                                    width: context.percentWidth * 28.43,
                                    height: context.percentHeight * 58.59,
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    width: context.percentWidth * 28.43,
                                    height: context.percentHeight * 58.59,
                                    kSamplePerson,
                                  )),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    width: context.percentWidth * 28.43,
                                    height: context.percentHeight * 58.59,
                                    kSampleJacket,
                                  )),
                            ]),
                          ),
                        )
                            .marginOnly(top: context.percentHeight * 15)
                            .paddingSymmetric(
                                horizontal: context.percentWidth * 4.58),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            kLorem,
                            style: kInterMediumBold.copyWith(),
                            textAlign: TextAlign.center,
                          ),
                        )
                            .marginSymmetric(
                                horizontal: context.percentWidth * 20.52)
                            .marginOnly(bottom: context.percentHeight * 7.51)
                        // .paddingSymmetric(
                        //     vertical: context.percentHeight * 5)
                      ],
                    )),
                Container(
                  color: kLignRed,
                  height: context.height,
                  width: context.width,
                  child: const Text('Sale'),
                ),
                Container(
                  color: kLigthBrown,
                  height: context.height,
                  width: context.width,
                  child: const Center(
                      child: Text(
                    "Contacts",
                  )),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const HelpJoinUsSignInWidget()
                    .marginOnly(right: context.percentWidth * 2),
                const NavBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(kBackGroundImage),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.infinity,
              height: context.percentHeight * 74,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      kHoodyJacketImage,
                      width: context.percentWidth * 24.46,
                      height: context.percentHeight * 50.19,
                    ),
                  ).marginOnly(top: context.percentHeight * 8),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      kJacketImage,
                      width: context.percentWidth * 50,
                      height: context.percentHeight * 51.93,
                    ),
                  ).marginOnly(top: context.percentHeight * 7),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      kHoodyPerson,
                      width: context.percentWidth * 30,
                      height: context.percentHeight * 56.078125,
                    ),
                  ).marginOnly(left: context.percentWidth * 22),
                  ElevatedWidgetButton(
                      kOnPress: () {},
                      kName: "SHOP",
                      kAlignment: Alignment.bottomCenter,
                      kFontSize: 24,
                      kH: context.percentHeight * 5.57,
                      kW: context.percentWidth * 15.14,
                      kColor: kWhite),
                ],
              ),
            ),
          ).marginOnly(top: context.percentHeight * 10)
        ],
      ),
    );
  }
}

class HelpJoinUsSignInWidget extends StatelessWidget {
  const HelpJoinUsSignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.percentWidth * 15.41,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyWidgetTextButton(
              kStyle: kInterRegurlar,
              kTitle: "Help",
              kOnPress: kUiStateInstance.helpFunction,
            ),
            const DividerNav(),
            MyWidgetTextButton(
              kStyle: kInterRegurlar,
              kTitle: "Join Us",
              kOnPress: kUiStateInstance.joinUsFunction,
            ),
            const DividerNav(),
            MyWidgetTextButton(
              kStyle: kInterRegurlar,
              kTitle: "Sign In",
              kOnPress: kUiStateInstance.signInFunction,
            ),
            const DividerNav(),
          ],
        ),
      ),
    );
  }
}

class DividerNav extends StatelessWidget {
  const DividerNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11, // Adjust the height of the line
      width: 1.5, // Width of the vertical line
      color: Colors.black, // Color of the line
    );
  }
}
