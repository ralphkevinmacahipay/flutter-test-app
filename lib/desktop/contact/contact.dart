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
    return Container(
      color: kLigthBrown,
      height: context.percentHeight * 50,
      width: context.width,
      child: const Center(
          child: Text(
        "Contacts",
      )),
    );
  }
}
