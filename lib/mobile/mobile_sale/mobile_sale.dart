import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileSaleWidget extends StatelessWidget {
  const MobileSaleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGrey,
      height: context.height,
      width: context.width,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: kWhite, boxShadow: [
              BoxShadow(
                  color: kBlack.withOpacity(.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4)
            ]),
            child: Text(
              "SALE",
              textAlign: TextAlign.center,
              style: kInterSemiBold.copyWith(
                  color: kLightRed, fontSize: context.percentWidth * 9.33),
            ),
          ),
        ],
      ),
    );
  }
}
