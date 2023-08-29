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
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(kBackGroundImage),
            ),
          ),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
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
                ).marginOnly(right: context.percentWidth * 2),
                const NavBar()
              ],
            )
          ]),
        )
      ]),
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
