import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';

class MyWidgetTextButton extends StatelessWidget {
  final TextStyle kStyle;
  final double? kFontSize;
  final void Function()? kOnPress;
  final String kTitle;

  const MyWidgetTextButton({
    super.key,
    required this.kTitle,
    required this.kOnPress,
    this.kFontSize,
    required this.kStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: kOnPress,
        child: Text(
          kTitle,
          style: kStyle.copyWith(
            color: kBlack,
          ),
        ));
  }
}
