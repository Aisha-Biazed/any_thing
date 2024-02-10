import 'package:core/core.dart';
import 'package:flutter/material.dart';

class LongerButtonScreen extends StatefulWidget {
  const LongerButtonScreen({super.key});

  @override
  State<LongerButtonScreen> createState() => _LongerButtonScreenState();
}

class _LongerButtonScreenState extends State<LongerButtonScreen> {
  Function()? get getOnPressed {
    return () {};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ///primary
          AppButton.light(
            title: "Proceed to Pay",
            onPressed: getOnPressed,
          ),
          const SizedBox(height: 10),
          AppButton.dark(
            title: "Proceed to Pay",
            onPressed: getOnPressed,
          ),
          const SizedBox(height: 10),
          AppButton.gray(
            title: "Proceed to Pay",
            onPressed: getOnPressed,
          ),
          const SizedBox(height: 10),
          AppButton.payment(
            leadingTitle: "Proceed to Pay",
            total: "Total Bill: 34.5\$",
            onPressed: getOnPressed,
          ),
        ],
      )),
    );
  }
}
