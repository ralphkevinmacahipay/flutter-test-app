import 'package:flutter/material.dart';
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
              children: [
                const HomeScreenWidget(),
                Container(
                  color: kLignRed,
                  height: context.percentHeight * 100,
                  width: context.percentWidth * 100,
                ),
                Container(
                  color: kGrey,
                  height: context.height,
                  width: context.width,
                  child: const Center(child: Text("Products")),
                ),
                Container(
                  color: kLignRed,
                  height: context.height,
                  width: context.width,
                  child: const Center(child: Text("Sale")),
                ),
                Container(
                  color: kLigthBrown,
                  height: context.height,
                  width: context.width,
                  child: const Center(child: Text("Contacts")),
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
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: context.percentHeight * 5.57,
                      width: context.percentWidth * 15.14,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(backgroundColor: kWhite),
                          onPressed: () {},
                          child: FittedBox(
                            child: Text(
                              "SHOP",
                              style: kInterMediumBold.copyWith(
                                  fontSize: 24, color: kBlack),
                            ),
                          )).cornerRadius(30),
                    ),
                  )
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
