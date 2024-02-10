import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GeneralTextScreen extends StatelessWidget {
  const GeneralTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: const Text("AppBar")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AppText.marquee("marquee"),
          AppText.displayLarge("displayLarge"),
          AppText.displayMedium("displayMedium"),
          AppText.displaySmall("displaySmall"),
          AppText.headlineLarge("headlineLarge"),
          AppText.headlineSmall("headlineSmall"),
          AppText.headlineMedium("headlineMedium"),
          AppText.titleLarge("titleLarge"),
          AppText.titleMedium("titleMedium"),
          AppText.titleSmall("titleSmall"),
          AppText.labelLarge("labelLarge"),
          AppText.labelMedium("labelMedium"),
          AppText.labelSmall("labelSmall"),
          AppText.bodyLarge("bodyLarge"),
          AppText.bodyMedium("bodyMedium"),
          AppText.bodySmall("bodySmall"),
        ],
      ),
    );
  }
}
