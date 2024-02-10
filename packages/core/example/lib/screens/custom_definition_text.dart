import 'package:core/core.dart';
import 'package:flutter/material.dart';

// definition
class CustomDefinitionText extends StatelessWidget {
  const CustomDefinitionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: const Text("AppBar")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AppText.sumImageText("sumImageText"),
          AppText.buttonText("buttonText"),
          AppText.regularText("regularText"),
          AppText.regularText('Regular text'),
          AppText.listTitle("listTitle"),
          AppText.informerText("informerText"),
          AppText.ratingText("ratingText"),
          AppText.ratingNumber("ratingNumber"),
        ],
      ),
    );
  }
}
