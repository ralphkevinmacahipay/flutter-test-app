import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:velocity_x/velocity_x.dart';

// TEXTBUTTON
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

//ELEVATED BUTTON

class ElevatedWidgetButton extends StatelessWidget {
  final String kName;
  final void Function()? kOnPress;
  final Alignment kAlignment; // Alignment.bottomCenter
  final double kFontSize;
  final double kH; //context.percentHeight * 5.57
  final double kW; //context.percentWidth * 15.14
  final Color kColor;
  const ElevatedWidgetButton({
    super.key,
    required this.kName,
    this.kOnPress,
    required this.kAlignment,
    required this.kFontSize,
    required this.kH,
    required this.kW,
    required this.kColor,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: kAlignment,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: kBlack.withOpacity(.50),
              blurRadius: 1,
              offset: const Offset(0, 4),
              spreadRadius: .5)
        ], borderRadius: BorderRadius.circular(30)),
        height: kH,
        width: kW,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kColor),
            onPressed: kOnPress,
            child: FittedBox(
              child: Text(
                kName,
                style: kInterMediumBold.copyWith(
                    fontSize: kFontSize, color: kBlack),
              ),
            )).cornerRadius(30),
      ),
    );
  }
}
