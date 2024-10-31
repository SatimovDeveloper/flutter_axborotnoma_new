
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/presentation/pages/login/sign_in/bloc/sign_in_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(textTheme),
      ),

      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
