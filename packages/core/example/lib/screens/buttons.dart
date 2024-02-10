import 'package:core/core.dart';
import 'package:flutter/material.dart';

enum StateApp { disabled, enabled }

enum HasIcon { onlyFirst, onlyEnd, both, hideAll }

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  StateApp isDisabled = StateApp.disabled;
  HasIcon hasIcon = HasIcon.hideAll;

  Function()? get getOnPressed {
    if (isDisabled == StateApp.disabled) {
      return null;
    } else {
      return () {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SegmentedButton<StateApp>(
              onSelectionChanged: (p0) => setState(() {
                isDisabled = p0.first;
              }),
              segments: const [
                ButtonSegment(value: StateApp.disabled, label: Text("disabled")),
                ButtonSegment(value: StateApp.enabled, label: Text("enabled")),
              ],
              selected: {isDisabled},
            ),
            const SizedBox(height: 10),
            SegmentedButton<HasIcon>(
              onSelectionChanged: (p0) => setState(() {
                hasIcon = p0.first;
              }),
              segments: const [
                ButtonSegment(value: HasIcon.hideAll, label: Text("hideAll")),
                ButtonSegment(value: HasIcon.both, label: Text("both")),
                ButtonSegment(value: HasIcon.onlyEnd, label: Text("onlyEnd")),
                ButtonSegment(value: HasIcon.onlyFirst, label: Text("onlyFirst")),
              ],
              selected: {hasIcon},
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  ///primary
                  AppButton.field(
                    title: "primary,xl",
                    buttonSize: ButtonSize.xl,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.field(
                    title: "primary,large",
                    buttonSize: ButtonSize.large,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.field(
                    title: "primary,medium",
                    buttonSize: ButtonSize.medium,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.field(
                    title: "primary,small",
                    buttonSize: ButtonSize.small,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),

                  ///tertiary
                  const SizedBox(height: 40),
                  AppButton.tertiary(
                    title: "tertiary,xl",
                    buttonSize: ButtonSize.xl,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.tertiary(
                    title: "tertiary,large",
                    buttonSize: ButtonSize.large,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.tertiary(
                    title: "tertiary,medium",
                    buttonSize: ButtonSize.medium,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.tertiary(
                    title: "tertiary,small",
                    buttonSize: ButtonSize.small,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppButton.secondary(
                    title: "secondary,xl",
                    buttonSize: ButtonSize.xl,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.secondary(
                    title: "secondary,large",
                    buttonSize: ButtonSize.large,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.secondary(
                    title: "secondary,medium",
                    buttonSize: ButtonSize.medium,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.secondary(
                    title: "secondary,small",
                    buttonSize: ButtonSize.small,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppButton.ghost(
                    title: "ghost,xl",
                    buttonSize: ButtonSize.xl,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.ghost(
                    title: "ghost,large",
                    buttonSize: ButtonSize.large,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.ghost(
                    title: "ghost,medium",
                    buttonSize: ButtonSize.medium,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                  AppButton.ghost(
                    title: "ghost,small",
                    buttonSize: ButtonSize.small,
                    onPressed: getOnPressed,
                    prefixIcon: prefixIcon,
                    postfixIcon: postfixIcon,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  get prefixIcon {
    if (hasIcon == HasIcon.hideAll || hasIcon == HasIcon.onlyEnd) {
      return null;
    }
    return const Icon(Icons.add);
  }

  get postfixIcon {
    if (hasIcon == HasIcon.hideAll || hasIcon == HasIcon.onlyFirst) {
      return null;
    }
    return const Icon(Icons.add);
  }
}
