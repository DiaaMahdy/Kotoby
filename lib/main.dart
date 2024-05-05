import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotoby/constants.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Kotoby());
}

class Kotoby extends StatelessWidget {
  const Kotoby({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: const SplashView(),
    );
  }
}
