import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';

import 'package:flutter_test_app/configuration/style.dart';

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
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    kMenuBar,
                    fit: BoxFit.contain,
                  )).p(context.percentWidth * 1),
            ),
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
