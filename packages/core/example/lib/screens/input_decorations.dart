import 'package:core/core.dart';
import 'package:flutter/material.dart';

class InputDecorations extends StatelessWidget {
  const InputDecorations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            AppTextFormField(hintText: getHint),
            const SizedBox(height: 20),
            AppTextFormField(
              decoration: const InputDecoration(
                hintText: "text with length more than 2 is invalid ",
              ),
              validator: (val) {
                if (val!.length > 2) {
                  return "should enter less or 2 character";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }

  String get getHint => "hint text";
}
