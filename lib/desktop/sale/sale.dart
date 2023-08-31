import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';

class SalesDesktopScreen extends StatelessWidget {
  const SalesDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLignRed,
      height: context.height,
      width: context.width,
      child: const Text('Sale'),
    );
  }
}
