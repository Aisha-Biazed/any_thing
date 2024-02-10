import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppSliverAppAppBar extends StatelessWidget {
  const AppSliverAppAppBar({
    super.key,
    this.titleTextStyle,
    this.backgroundColor,
    this.shape,
    this.leading,
    this.title,
    this.bottom,
    this.elevation,
    this.clipBehavior,
    this.foregroundColor,
    this.surfaceTintColor = Colors.transparent,
    this.shadowColor,
    this.primary,
    this.titleSpacing,
    this.centerTitle,
    this.actions,
    this.actionsIconTheme,
    this.automaticallyImplyLeading,
    this.excludeHeaderSemantics,
    this.flexibleSpace,
    this.forceMaterialTransparency,
    this.iconTheme,
    this.toolbarHeight = kToolbarHeight,
    this.leadingWidth,
    this.scrolledUnderElevation,
    this.systemOverlayStyle,
    this.toolbarTextStyle,
    this.label,
    this.showDefaultBackButton = false,
    this.defaultBackButtonColor,
    this.labelColor = const Color(0xff667085),
     this.pinned = false ,
     this.snap = false ,
     this.stretch = false ,
  });

  final TextStyle? titleTextStyle;

  final Color? backgroundColor;

  final ShapeBorder? shape;

  final Widget? leading;

  final Widget? title;

  final PreferredSize? bottom;

  final double? elevation;

  final Clip? clipBehavior;

  final Color? foregroundColor;

  final Color? surfaceTintColor;

  final Color? shadowColor;

  final bool? primary;

  final double? titleSpacing;

  final bool? centerTitle;

  final List<Widget>? actions;

  final IconThemeData? actionsIconTheme;

  final bool? automaticallyImplyLeading;

  final bool? excludeHeaderSemantics;

  final Widget? flexibleSpace;

  final bool? forceMaterialTransparency;

  final IconThemeData? iconTheme;

  final double? leadingWidth;

  final double? scrolledUnderElevation;

  final SystemUiOverlayStyle? systemOverlayStyle;

  final TextStyle? toolbarTextStyle;

  final String? label;

  final bool showDefaultBackButton;

  final Color? defaultBackButtonColor;

  final Color labelColor;
  final double toolbarHeight;
  final bool pinned;

  final bool snap;

  final bool stretch;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      snap: snap,
      stretch: stretch,
      titleTextStyle: titleTextStyle,
      backgroundColor: backgroundColor,
      shape: shape,
      leading: showDefaultBackButton
          ? IconButton(
              icon: AppImage.asset('packages/core/assets/icons/arrow_left.svg',
                  color: defaultBackButtonColor),
              onPressed: () => Navigator.of(context).pop(),
            )
          : leading,
      title: label != null
          ? AppText.labelMedium(
              label!,
              color: titleTextStyle == null ? labelColor : null,
              style: titleTextStyle,
            )
          : title,
      key: key,
      bottom: bottom,
      toolbarHeight: toolbarHeight,
      elevation: elevation,
      clipBehavior: clipBehavior,
      foregroundColor: foregroundColor,
      surfaceTintColor: surfaceTintColor,
      shadowColor: shadowColor,
      primary: primary ?? true,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      actions: actions,
      actionsIconTheme: actionsIconTheme,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      excludeHeaderSemantics: excludeHeaderSemantics ?? false,
      flexibleSpace: flexibleSpace,
      forceMaterialTransparency: forceMaterialTransparency ?? false,
      iconTheme: iconTheme,
      leadingWidth: leadingWidth,
      scrolledUnderElevation: scrolledUnderElevation,
      systemOverlayStyle: systemOverlayStyle,
      toolbarTextStyle: toolbarTextStyle,
    );
  }
}
