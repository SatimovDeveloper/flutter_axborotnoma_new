
import 'package:flutter/material.dart';
import '../../../../../config/theme/strings.dart';
import '../../../widgets/primary_button.dart';
import '../../../widgets/primary_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController txtNewPassword = TextEditingController();
  final TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          AppText.resetPasswordTitle,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            PrimaryTextField(
              controller: txtNewPassword,
              title: AppText.resetText1,
              obscureText: true,
              type: TextInputType.text,
            ),
            PrimaryTextField(
              controller: txtConfirmPassword,
              title: AppText.resetText2,
              obscureText: true,
              type: TextInputType.text,
            ),
            SizedBox(
              height: 100,
            ),
            PrimaryButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: false,
                    context: context,
                    builder: (context){
                      return SafeArea(
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
                            mainAxisSize: MainAxisSize.min,
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
                              SizedBox(height: 20,),
                              Text(
                                AppText.resetText3,
                                style:  GoogleFonts.poppins(textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                ),),
                              Text(
                                textAlign: TextAlign.center,
                                AppText.resetText4,
                                style:  TextStyle(
                                    color: Color(0xff4B4B4B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 40,),
                              PrimaryButton(
                                onPressed: () {
                                },
                                text: AppText.textEnter,
                                height: 50,
                                minWidth: double.infinity,
                                borderRadius: 10,
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              text: AppText.textConfirm,
              minWidth: double.infinity,
              borderRadius: 10,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
