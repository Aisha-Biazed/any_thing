import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:malum_mobile/features/auth/presentation/pages/store_auth.dart';
import 'package:malum_mobile/generated/assets.dart';

class AuthPage extends StatelessWidget {
  static String get name => "/AuthPage";

  static String get path => "/AuthPage";

  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.onPrimary,
      body: Stack(
        children: [
          AppImage.asset('assets/images/man_auth.png'),
          Positioned(
              top: -45.h,
              left: 55.w,
              child: AppImage.asset(Assets.imagesLogoSplash)),
          Positioned(
              top: 220.h,
              right: 55.w,
              child:AppText.titleLarge('اشتري الآن و ادفع بعدين',fontWeight: FontWeight.w700,).copyWith(color: context.colorScheme.secondary),),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: REdgeInsetsDirectional.only(start: 80.w,end: 80.w,bottom: 80.h),
                child: AppText.headlineSmall("احصل على باقات معلوم للشراء وادفع لاحقا ",textAlign: TextAlign.center),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed(StoreAuth.name);
                },
                child: Container(
                  height: 56.h,
                  width: 114.w,
                  decoration:  BoxDecoration(
                    borderRadius:BorderRadius.circular(22.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0XFF199DC3),
                        Color(0XFF91F000),
                        // Color(0XFF5575a3),
                        // Color(0XFF8b9ec1),
                        // Color(0XFFbfc9e0),
                        // Color(0XFFf3f6ff),
                      ],
                      transform: GradientRotation(pi),
                      stops: [0.4, 1],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.white.withOpacity(0.2)),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.white.withOpacity(0.5)),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.white.withOpacity(0.7)),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
                    ],
                  ),
                ),
              ),
              92.verticalSpace,
            ],
          )


        ],
      ),
    );
  }
}
