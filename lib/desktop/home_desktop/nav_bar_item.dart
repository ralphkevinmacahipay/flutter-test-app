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
                      kOnPress: () => kUiStateInstance.homeFuntion(context), //
                    ),
                    MyWidgetTextButton(
                      kStyle: kInterRegurlar,
                      kTitle: "NEW ARRIVAL",
                      kOnPress: () =>
                          kUiStateInstance.newArrivalFunction(context),
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
              width: context.percentWidth * 13.48,
              child: TextField(
                textAlign: TextAlign.left,
                style: kInterRegurlar.copyWith(
                  color: kBlack,
                ),
                decoration: InputDecoration(
                  helperStyle: kInterSemiBold.copyWith(
                      color: kGrey, fontSize: context.percentWidth * 1),
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
          ).marginOnly(right: context.percentWidth * 13),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: context.percentWidth * 2,
              width: context.percentWidth * 2,
              child: Stack(children: [
                InkWell(
                    onTap: () {
                      print("test");
                    },
                    child: Image.asset(kChartIcon)),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: kLogoBackColor,
                    radius: context.percentWidth * .5,
                    child: FittedBox(
                        child: Text(
                      "0",
                      style: kInterMediumBold.copyWith(
                          color: kBlack.withOpacity(.47)),
                    )),
                  ),
                )
              ]),
            ),
          ).marginOnly(right: context.percentWidth * 7.15),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: context.percentWidth * 2,
              width: context.percentWidth * 2,
              child: InkWell(
                  onTap: () => kUiStateInstance.favFunction(),
                  child: Image.asset(kFavIcon)),
            ),
          ).marginOnly(right: context.percentWidth * 4),
        ],
      ),
    );
  }
}
