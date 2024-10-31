


import 'package:flutter/material.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/strings.dart';
import '../../../../widgets/primary_button.dart';
import '../../../../widgets/primary_text_field.dart';
import '../../sign_up/sign_up_screen.dart';
import '../../verify_sms/verify_forgot_password_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtDialogImei = TextEditingController();
  TextEditingController txtDialogPhone = TextEditingController();
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: kToolbarHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                            text: AppText.signInText,
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text: AppText.signInEnterAccount,
                                style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                PrimaryTextField(
                  controller: txtPhone,
                  title: AppText.textPhone,
                  type: TextInputType.phone,
                  hintText: AppText.textHintPhone,
                  maxLength: 13,
                ),
                PrimaryTextField(
                  controller: txtPassword,
                  title: AppText.textPassword,
                  type: TextInputType.text,
                  obscureText: true,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: false,
                          context: context,
                          builder: (context) {
                            return SafeArea(
                              child: SingleChildScrollView(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 24),
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(24),
                                          topRight: Radius.circular(24))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 32,
                                          height: 32,
                                          padding: EdgeInsets.zero,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: const Color(0xffE6E6E6),
                                          ),
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.close_rounded,
                                              color: Color(0xff4B4B4B),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        AppText.signInForgetPassword,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        AppText.signInShowText,
                                        style: const TextStyle(
                                            color: Color(0xff4B4B4B),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 40,),
                                      PrimaryTextField(
                                        controller: txtDialogImei,
                                        title: AppText.textJSHIR,
                                        hintText: AppText.textHintImei,
                                        type: TextInputType.number,
                                        maxLength: 14,
                                      ),
                                      PrimaryTextField(
                                        controller: txtDialogPhone,
                                        title: AppText.textPhone,
                                        type: TextInputType.phone,
                                        hintText: AppText.textHintPhone,
                                        maxLength: 13,
                                      ),
                                      SizedBox(height: 40,),

                                      PrimaryButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.push(context,MaterialPageRoute(builder: (context) =>VerifyForgotPasswordScreen()));
                                        },
                                        iconData: Icons.send,
                                        text: AppText.signInTextSend,
                                        height: 50,
                                        minWidth: double.infinity,
                                        borderRadius: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      AppText.signInForgetPassword,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                PrimaryButton(
                  onPressed: () {},
                  text: AppText.textEnter,
                  height: 50,
                  minWidth: double.infinity,
                  borderRadius: 10,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppText.signInTextNoAccount,
                      style: TextStyle(
                          color: TColor.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    //
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          AppText.textSignUp,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
