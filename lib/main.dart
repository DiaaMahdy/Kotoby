import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotoby/constants.dart';
import 'package:kotoby/features/presentation/views/splash_view.dart';

void main() {
  runApp(const Kotoby());
}

class Kotoby extends StatelessWidget {
  const Kotoby({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
