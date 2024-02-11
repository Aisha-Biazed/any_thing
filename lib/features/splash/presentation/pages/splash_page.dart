import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:malum_mobile/features/auth/presentation/pages/auth_page.dart';

class SplashPage extends StatefulWidget {
  static String get name => "/SplashPage";

  static String get path => "/SplashPage";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
     context.goNamed(AuthPage.name);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      body: Stack(
        children: [
         AppImage.asset('assets/images/up_splash.png'),
          Positioned(
              top: 250.h,
              // left: 0,
              child: AppImage.asset('assets/images/down_splash.png')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage.asset('assets/images/logo_splash.png'),
              AppText.headlineLarge("خليها نحاسب عنك",color: Colors.white),
              AppText.titleMedium("متجر متعدد في تطبيق واحد",fontWeight: FontWeight.w700).copyWith(color: Colors.white),
              112.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 131.h,
                    width: 76.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36.r),
                      color: Colors.red,
                      gradient:const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color(0XFF91F000),
                          Color(0XFF199DC3),
                        ],
                        transform: GradientRotation(pi),
                        stops: [0.4, 1],
                      ),
                    ),
                    child: Padding(
                      padding: REdgeInsetsDirectional.only(bottom: 40.h),
                      child: Column(
                        children: [
                          AppImage.asset('assets/images/english.png'),
                          15.horizontalSpace,
                          AppText("عربي",).copyWith(color: context.colorScheme.onPrimary)
                        ],
                      ),
                    ),
                  ),
                  48.horizontalSpace,
                  Container(
                    height: 131.h,
                    width: 76.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36.r),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: REdgeInsetsDirectional.only(bottom: 40.h),
                      child: Column(
                        children: [
                          AppImage.asset('assets/images/english.png'),
                          15.horizontalSpace,
                          AppText("عربي",).copyWith(color: context.colorScheme.onPrimary)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
