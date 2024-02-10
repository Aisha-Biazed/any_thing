import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CheckBoxScreen extends StatelessWidget {
  CheckBoxScreen({super.key});

  final ValueNotifier<bool> vv = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AppText("default : selected"),
          Center(
            child: ValueListenableBuilder(
              valueListenable: vv,
              builder: (context, value, child) => AppCheckbox(
                onChanged: (c) {
                  vv.value = c;
                },
                isSelected: true,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          AppText("default un-selected"),
          Center(
            child: ValueListenableBuilder(
              valueListenable: vv,
              builder: (context, value, child) => AppCheckbox(
                onChanged: (c) {
                  vv.value = c;
                },
                isSelected: value,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          AppText("disalbed un-selected"),
          Center(
            child: ValueListenableBuilder(
              valueListenable: vv,
              builder: (context, value, child) => const AppCheckbox(
                isSelected: false,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          AppText("disalbed selected"),
          Center(
            child: ValueListenableBuilder(
              valueListenable: vv,
              builder: (context, value, child) => const AppCheckbox(
                isSelected: true,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
