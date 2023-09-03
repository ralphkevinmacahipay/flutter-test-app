import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/constant_var.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:flutter_test_app/desktop/contact_screen/contact.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactMobileWidget extends StatelessWidget {
  const ContactMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackGroundColor,
      height: context.percentHeight * 82.38,
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.percentHeight * 7.88),
          // logo
          CircleAvatar(
            backgroundColor: kLogoBackColor,
            radius: context.percentWidth * 13.33,
            child: Text(
              'LOGO',
              style: kInterRegurlar.copyWith(
                fontSize: context.percentWidth * 5.33,
              ),
            ).marginAll(context.percentWidth * 5.33),
          ).marginOnly(bottom: context.percentHeight * 6.527),
          ListTileWidget(
            kTextSize: context.percentWidth * 4,
            kIconSIze: context.percentWidth * 6.133,
            kTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            kIcon: Icons.send,
          ).marginOnly(
              // top: context.percentHeight * 1.53,
              left: context.percentWidth * 11.46),
          ListTileWidget(
            kIconSIze: context.percentWidth * 6.133,
            kTextSize: context.percentWidth * 4,
            kTitle: "Lorem ipsum",
            kIcon: Icons.phone_android_outlined,
          ).marginOnly(
              // top: context.percentHeight * 1.53,
              left: context.percentWidth * 11.46),
          ListTileWidget(
            kIconSIze: context.percentWidth * 6.133,
            kTextSize: context.percentWidth * 4,
            kTitle: "Lorem ipsum dolor sit amet",
            kIcon: Icons.email_outlined,
          ).marginOnly(
              // top: context.percentHeight * 1.53,
              left: context.percentWidth * 11.46),
          Row(
            children: kContactIcon
                .map((kIcon) => InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: kIconColor,
                        radius: context.percentWidth * 5.86,
                        child: Image.asset(
                          kIcon['icon_image'],
                          height: context.percentWidth * 6.1333,
                          width: context.percentWidth * 6.1333,
                        ),
                      ).marginOnly(
                          right: context.percentWidth * 3.2,
                          top: context.percentHeight * 4.92),
                    ))
                .toList(),
          ).marginOnly(
              left: context.percentWidth * 5.866,
              bottom: context.percentHeight * 7.019),
          InkWell(
            onTap: () {},
            child: Text(
              "COLLECTION",
              style: kInterMediumBold.copyWith(
                  fontSize: context.percentWidth * 4.8),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "INFORMATION",
              style: kInterMediumBold.copyWith(
                  fontSize: context.percentWidth * 4.8),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "MORE",
              style: kInterMediumBold.copyWith(
                  fontSize: context.percentWidth * 4.8),
            ),
          ),
        ],
      ).marginOnly(left: context.percentWidth * 6.66),
    );
  }
}
