import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
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
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  SizedBox(
                    width: context.percentWidth * 15.41,
                    child: const FittedBox(
                      child: Row(
                        children: [
                          NavItemMenu(
                            kTitle: "Help",
                            kOnPress: helpFunction,
                          ),
                          DividerNav(),
                          NavItemMenu(
                            kTitle: "Join Us",
                            kOnPress: joinUsFunction,
                          ),
                          DividerNav(),
                          NavItemMenu(
                            kTitle: "Sign In",
                            kOnPress: signInFunction,
                          ),
                          DividerNav(),
                        ],
                      ),
                    ),
                  ).marginOnly(right: context.percentWidth * 2)
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}

void signInFunction() {
  print('sign in');
}

void helpFunction() {
  print('help');
}

void joinUsFunction() {
  print('join us');
}

class NavItemMenu extends StatelessWidget {
  final void Function()? kOnPress;
  final String kTitle;

  const NavItemMenu({
    super.key,
    required this.kTitle,
    required this.kOnPress,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: kOnPress,
        child: Text(
          kTitle,
          style: kInterRegurlar.copyWith(color: kBlack),
        ));
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
