import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';

import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
          color: kBlack.withOpacity(.25),
          offset: const Offset(0, 4),
          blurRadius: 4,
        )
      ]),
      height: context.percentHeight * 7.5, // height ng navbar
      width: context.percentWidth * 100,
      child: Stack(
        children: [
          const Row(
            children: [],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          kChartIcon,
                          fit: BoxFit.contain,
                        )).p(context.percentWidth * 1),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                              radius: context.percentWidth * 2.2,
                              backgroundColor: kLogoBackColor,
                              child: FittedBox(
                                child: Text(
                                  "0",
                                  style:
                                      kInterMediumBold.copyWith(color: kBlack),
                                ),
                              ))
                          .paddingOnly(
                              left: context.percentWidth * 8,
                              bottom: context.percentHeight * 1),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      kFavIcon,
                      fit: BoxFit.contain,
                    )).p(context.percentWidth * 1),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  kMenuBar,
                  fit: BoxFit.contain,
                )).p(context.percentWidth * 1),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: context.percentWidth * 7,
              backgroundColor: kLogoBackColor,
              child: FittedBox(
                child: Text(
                  "LOGO",
                  style: kInterRegurlar.copyWith(color: kBlack),
                ).p(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
