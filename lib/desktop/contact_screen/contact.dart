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
      child: Row(children: [
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
                      /**
                       SizedBox(
                        width: context.percentWidth * 47.84,
                        child: Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: context.percentWidth * 3,
                                backgroundColor: kLogoBackColor,
                                child: FittedBox(
                                    child: const Text("LOGO")
                                        .p(context.percentWidth * 1)),
                              ),
                              const Text(
                                  " Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                            ],
                          ),
                        ),
                      ),
                      
                   */
                      CircleAvatar(
                        radius: context.percentWidth * 3,
                        backgroundColor: kLogoBackColor,
                        child: FittedBox(
                            child:
                                const Text("LOGO").p(context.percentWidth * 1)),
                      ).marginOnly(
                          top: context.percentHeight * 3.61,
                          left: context.percentWidth * 4.027),
                      ListTile(
                        subtitle: Text(
                            style: kInterMediumBold.copyWith(fontSize: 15),
                            " Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                        leading: const Icon(Icons.send),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: kInterMediumBold.copyWith(fontSize: 15),
                            " Lorem ipsum "),
                        leading: const Icon(Icons.phone_android_outlined),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: kInterMediumBold.copyWith(fontSize: 15),
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
              color: kBlack,
            ))
      ]),
    );
  }
}

/**
 *  Column(children: [
                CircleAvatar(
                  radius: context.percentWidth * 3,
                  backgroundColor: kLogoBackColor,
                  child: FittedBox(
                      child: const Text("LOGO").p(context.percentWidth * 1)),
                ),
                SizedBox(
                  height: context.percentHeight * 3.417,
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(Icons.send),
                      FittedBox(
                        child: Text(
                            " Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                      )
                    ],
                  ),
                ),
              ])
 */