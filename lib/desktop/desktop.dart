import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(kBackGroundImage),
            ),
          ),
          child: const Center(child: Text("Desktop")),
        )
      ]),
    );
  }
}
