import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static String get name => "/SplashPage";

  static String get path => "/SplashPage";

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText("Splash"),
      ),
    );
  }
}
