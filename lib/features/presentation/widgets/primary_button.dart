

import 'package:flutter/material.dart';
import '../../../config/theme/color.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final double? minWidth;
  final double borderRadius;
  final String text;
  final IconData? iconData;

  const PrimaryButton(
      {super.key,
        required this.onPressed,
        this.height,
        this.minWidth,
        this.borderRadius = 0,
        this.iconData,
        required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth,
      height: height,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      color: TColor.primary,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconData != null ?
          Row(
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              const SizedBox(width: 4,)
            ],
          ) :
          Container(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
