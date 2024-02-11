import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  static const path="LoginPage";
  static const name="LoginPage";
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.onPrimary,
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: AppImage.asset('assets/images/down_login.png')),
          AppImage.asset('assets/images/top_login.png'),
          Padding(
            padding: REdgeInsetsDirectional.only(top: 66.h,start: 28.w,end: 28.w),
            child: ListView(
              children: [
                Row(
                  children: [
                    AppImage.asset('packages/core/assets/icons/arrow_left.svg'),
                    101.horizontalSpace,
                    AppText.titleSmall("تسجيل الدخول",fontWeight: FontWeight.w700),

                  ],
                ),
                70.verticalSpace,
                AppMobileNumberField(

                ),
                20.verticalSpace,
                AppTextFormField(
                  prefixIcon: IconButton(onPressed: () {

                  }, icon:Icon(Icons.visibility)),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {  },
                    child: AppText("هل نسيت كلمة السر?",style: TextStyle(decoration: TextDecoration.underline),),),
                  ],
                ),
                50.verticalSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 56.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r))
                  ),
                    
                    onPressed: () {

                }, child: AppText("تسجيل الدخول")),
                64.verticalSpace,
                Center(child: AppText("تسجيل باستخدام")),
                22.verticalSpace,
                Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    border: Border.all(
                      color: context.colorScheme.outline
                    )
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage.asset('assets/images/google.png'),
                        AppText("Google")
                      ],
                    ),
                  ),
                ),
                34.verticalSpace,
                Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      border: Border.all(
                          color: context.colorScheme.outline
                      )
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage.asset('assets/images/face.png'),
                        AppText("faceBook")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
