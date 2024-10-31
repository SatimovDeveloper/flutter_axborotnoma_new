

import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';

class PrimaryTextField extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? type;
  final int? maxLength;
  final bool obscureText;

  const PrimaryTextField(
      {super.key,
        required this.controller,
        required this.title,
        this.type,
        this.hintText,
        this.obscureText = false,
        this.maxLength}
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: TColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: TColor.primary,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: TextField(

            style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
            controller: controller,
            keyboardType: type,
            maxLength: maxLength,
            obscureText: obscureText,
            cursorColor: TColor.primary,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              hintMaxLines: 1,
              counterText: "",
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16,)
      ],
    );
  }
}
