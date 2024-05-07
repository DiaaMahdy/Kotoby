import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotoby/constants.dart';
import 'package:kotoby/core/utils/app_routes.dart';

void main() {
  runApp(const Kotoby());
}

class Kotoby extends StatelessWidget {
  const Kotoby({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
    );
  }
}
