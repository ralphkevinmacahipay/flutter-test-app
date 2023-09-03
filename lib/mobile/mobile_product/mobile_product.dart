import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';

class ProductMobileWidget extends StatelessWidget {
  const ProductMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLignRed,
      height: context.height,
      width: context.width,
      child: const Center(child: Text("Product")),
    );
  }
}
