import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotoby/features/presentation/views/splash_view.dart';

void main() {
  runApp(const Kotoby());
}

class Kotoby extends StatelessWidget {
  const Kotoby({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}