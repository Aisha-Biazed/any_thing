import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/color_scheme/dark_color_scheme.dart';
import 'common/color_scheme/light_color_scheme.dart';
import 'services/language_service.dart';
import 'services/navigation/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: false,
      splitScreenMode: true,
      child: Builder(
        builder: (context) {
          final theme = AppTheme.init(
            darkColorScheme: darkColorScheme,
            lightColorScheme: lightColorScheme,
          );

          return MaterialApp.router(
            routerConfig: router,
            theme: theme.lightTheme,
            debugShowCheckedModeBanner: false,
            locale: LanguageService.supportedLocales.last,

          );
        },
      ),
    );
  }
}
