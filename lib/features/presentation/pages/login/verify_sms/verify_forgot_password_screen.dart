
import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/strings.dart';
import 'package:pinput/pinput.dart';

import '../../../widgets/primary_button.dart';
import '../reset_password/reset_password_screen.dart';

class VerifyForgotPasswordScreen extends StatefulWidget {
  const VerifyForgotPasswordScreen({super.key});

  @override
  State<VerifyForgotPasswordScreen> createState() => _VerifyForgotPasswordScreenState();
}

class _VerifyForgotPasswordScreenState extends State<VerifyForgotPasswordScreen> {
  String phoneNumber = "***7530";
  String counterTime = "01:00";
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: TColor.textColor,
            )),
        title: Text(
          AppText.verifyAppBarTitle,
          style: TextStyle(
              color: TColor.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 44,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: AppText.verifyText7,
                    style: TextStyle(
                        color: TColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "$phoneNumber ",
                        style: TextStyle(
                            color: TColor.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                          text: AppText.verifyText2,
                          style: TextStyle(
                              color: TColor.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400))
                    ]),
              ),
              const SizedBox(
                height: 48,
              ),
              Pinput(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                controller: controller,
                length: 6,
                keyboardType: TextInputType.text,
                defaultPinTheme: PinTheme(
                  width: 48,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: TColor.borderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: TextStyle(
                      color: TColor.textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                focusedPinTheme: PinTheme(
                  width: 48,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: TextStyle(
                      color: TColor.textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                submittedPinTheme: PinTheme(
                  width: 48,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: TColor.primary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: TextStyle(
                      color: TColor.textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppText.verifyText3,
                    style: TextStyle(
                      color: TColor.textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      AppText.verifyText4,
                      style: TextStyle(
                        color: TColor.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                    text: AppText.verifyText5,
                    style: TextStyle(
                      color: TColor.textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: counterTime,
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
                height: 120,
              ),

              PrimaryButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
                },
                text: AppText.textConfirm,
                height: 50,
                borderRadius: 10,
                minWidth: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
