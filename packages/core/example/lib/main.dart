import 'package:core/core.dart';
import 'package:example/screens/buttons.dart';
import 'package:example/screens/check_box.dart';
import 'package:example/screens/custom_definition_text.dart';
import 'package:example/screens/general_text.dart';
import 'package:example/screens/input_decorations.dart';
import 'package:example/screens/longer_button.dart';
import 'package:example/screens/switch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.init(
          darkColorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, surface: Colors.white),
          lightColorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ).lightTheme,
        home: child!,
      ),
      child: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ButtonScreen()));
              },
              child: const Text("go to buttons"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const InputDecorations(),
                  ),
                );
              },
              child: const Text("Input decorations"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GeneralTextScreen(),
                  ),
                );
              },
              child: const Text("General Text"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CustomDefinitionText(),
                  ),
                );
              },
              child: const Text("Custom Definition Text"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LongerButtonScreen(),
                  ),
                );
              },
              child: const Text("LongerButtonScreen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SwitchScreen(),
                  ),
                );
              },
              child: const Text("SwitchScreen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CheckBoxScreen(),
                  ),
                );
              },
              child: const Text("CheckBoxScreen"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
