

import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/strings.dart';
import '../../../widgets/primary_button.dart';
import '../../../widgets/primary_text_field.dart';
import '../verify_sms/verify_sign_up_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtPassport = TextEditingController();
  TextEditingController txtImei = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16,vertical: kToolbarHeight),
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
                      Text(
                        AppText.textSignUp,
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                PrimaryTextField(
                  controller: txtPassport,
                  title: AppText.signUpPSerNum,
                  hintText: AppText.signUpHintPSerNum,
                  type: TextInputType.text,
                  maxLength: 9,
                ),
                PrimaryTextField(
                  controller: txtImei,
                  title: AppText.textJSHIR,
                  hintText: AppText.textHintImei,
                  type: TextInputType.number,
                  maxLength: 14,
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
                PrimaryTextField(
                  controller: txtConfirmPassword,
                  title: AppText.signUpConfirmPassword,
                  type: TextInputType.text,
                  obscureText: true,
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked_outlined,
                        color: isCheck
                            ? TColor.primary
                            : Colors.grey.withOpacity(0.8),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          AppText.signUpCheckText,
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                PrimaryButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>VerifySignUpScreen()));
                  },
                  text: AppText.textSignUp,
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
                      AppText.signUpAccount,
                      style: TextStyle(
                          color: TColor.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    //
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          AppText.textEnter,
                          style: const TextStyle(
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
