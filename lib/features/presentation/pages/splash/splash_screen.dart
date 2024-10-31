

import 'package:flutter/material.dart';

import '../../../../config/theme/color.dart';
import '../../../../config/theme/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                textAlign: TextAlign.center,
                AppText.splashText,
                style: TextStyle(
                    color: TColor.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}