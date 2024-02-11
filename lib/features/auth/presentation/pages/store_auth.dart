import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:malum_mobile/features/auth/presentation/pages/login_page.dart';

class StoreAuth extends StatelessWidget {
  static const path="StoreAuth";
  static const name="StoreAuth";
  const StoreAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Column(
           children: [
             Stack(
               children: [
                 AppImage.asset('assets/images/man_auth.png'),
                 Positioned(
                   top: 170.h,
                   right: 62.w,
                   child: Column(
                     children: [
                       AppText.displayMedium("ابدأ الربح"),
                       Container(
                         width: 88.w,
                         height: 5.h,
                         decoration: const BoxDecoration(
                           gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.bottomRight,
                             colors: <Color>[
                               Color(0XFF91F000),
                               Color(0XFF199DC3),
                             ],
                             transform: GradientRotation(pi),
                             stops: [0.4, 1],
                           ),
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
             Padding(
               padding: REdgeInsetsDirectional.only(start: 130.w,end: 130.w),
               child: AppText.headlineSmall("أكثر من 2000 متجر يوفر خدمتنا",textAlign: TextAlign.center),
             ),
             Padding(
               padding: REdgeInsetsDirectional.only(start: 32.w,end: 32.w),
               child: Container(
                 width: double.infinity,
                 decoration:  BoxDecoration(
                   gradient:  LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.topRight,
                     colors: <Color>[
                       Color(0XFF91F000),
                       Color(0XFF199DC3),
                     ],
                     transform: GradientRotation(pi),
                     stops: [0.4, 1],
                   ),
                   borderRadius:BorderRadius.circular(28.r),
                 ),
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     minimumSize: Size(double.infinity,56.h),
                    backgroundColor: Colors.transparent,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r))
                   ),


                     onPressed: () {
                      context.pushNamed(LoginPage.name);
                 }, child: AppText("تسجيل دخول")),
               ),
             ),
             28.verticalSpace,
             Padding(
               padding: REdgeInsetsDirectional.only(start: 32.w,end: 32.w),
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(double.infinity, 56.h),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r))
                 ),
                   onPressed: () {

               }, child: AppText("إنشاء حساب")),
             )

           ],
         )
       ],
     ),

    );
  }
}
