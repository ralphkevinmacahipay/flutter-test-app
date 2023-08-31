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
      constraints: const BoxConstraints(minWidth: 273),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              kMenuBar,
            ).marginAll(context.percentWidth * 4),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: kLogoBackColor,
              child: FittedBox(
                child: Text(
                  "LOGO",
                  style: kInterRegurlar.copyWith(color: kBlack),
                ).p(context.percentWidth * 1),
              ),
            ).marginAll(context.percentWidth * 1),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              kFavIcon,
            ).marginAll(context.percentWidth * 3),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Image.asset(
                  kChartIcon,
                ).marginAll(context.percentWidth * 3),
                const Align(alignment: Alignment.bottomRight, child: Text("0")),
              ],
            ),
          ).marginOnly(right: context.percentWidth * 14.94)
        ],
      ),
    );
  }
}
/**
 
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
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
                          child: Text(
                            "0",
                            style: kInterMediumBold.copyWith(color: kBlack),
                          ))
                      .paddingOnly(
                          left: context.percentWidth * 8,
                          bottom: context.percentHeight * 1),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        kFavIcon,
                        fit: BoxFit.contain,
                      )).p(context.percentWidth * 1),
                ),
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
 */
