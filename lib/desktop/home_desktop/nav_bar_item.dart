import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/my_widget/my_widget.dart';
import 'package:flutter_test_app/state_management/state_instance.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
          color: kBlack.withOpacity(.25),
          offset: const Offset(0, 4),
          blurRadius: 4,
        )
      ]),
      height: 50, // height ng navbar
      width: context.percentWidth * 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: CircleAvatar(
                backgroundColor: kLogoBackColor,
                child: FittedBox(
                  child: Text(
                    "Logo",
                    style: kInterRegurlar.copyWith(color: kBlack),
                  ).p(5),
                ),
              ),
            ),
          ).marginOnly(left: context.percentWidth * 2.71),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: context.percentWidth * 50,
              child: FittedBox(
                child: Row(
                  children: [
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "HOME",
                      kOnPress: kUiStateInstance.homeFuntion,
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "NEW ARRIVAL",
                      kOnPress: kUiStateInstance.newArrivalFunction,
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "SHOP",
                      kOnPress: kUiStateInstance.shopFunction,
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "LAST COLLECTION",
                      kOnPress: kUiStateInstance.lastColFunction,
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "MEN",
                      kOnPress: kUiStateInstance.menFunction,
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kFontSize: 16,
                      kTitle: "WOMEN",
                      kOnPress: kUiStateInstance.womenFunction,
                    ),
                  ],
                ),
              ).marginOnly(right: context.percentWidth * 5),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 30,
              width: 194,
              child: TextField(
                textAlign: TextAlign.left,
                style: kInterRegurlar.copyWith(color: kBlack),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Search',
                  fillColor: kGrey,
                  filled: true,
                  border: InputBorder.none,
                  prefixIcon: Image.asset(
                    kSearchIcon,
                  ).p(5),
                ),
              ).cornerRadius(30),
            ),
          ),
        ],
      ),
    );
  }
}
