

import 'package:flutter/material.dart';

import '../../../../config/theme/color.dart';

class IntroPage extends StatelessWidget {
  final Size deviceSize;
  final Map obj;
  const IntroPage({super.key, required this.deviceSize, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin:  EdgeInsets.symmetric(horizontal: deviceSize.width*0.1),
          width: deviceSize.width,
          height: deviceSize.height*0.61,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(obj["image"],fit: BoxFit.contain,),
              const Spacer(),
              Text(textAlign: TextAlign.center,obj["title"], style: TextStyle(color: TColor.primary, fontSize: 18, fontWeight: FontWeight.w700),),
              SizedBox(height: deviceSize.height*0.03,),
              Text(textAlign: TextAlign.center,obj["subTitle"], style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400,))
            ],
          ),
        )
      ],
    );
  }
}