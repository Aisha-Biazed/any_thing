import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatelessWidget {
   SwitchScreen({super.key});

  final ValueNotifier<bool> vv = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: ValueListenableBuilder(
              valueListenable: vv,
              builder: (context, value, child) => AppSwitch(
                value: value,
                onChanged: (c) {
                  vv.value = c;
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
