part of "app_theme.dart";

const _package = 'design';

TextTheme textTheme = TextTheme(
  displayLarge: TextStyle(fontFamily: 'GeneralSans', fontSize: 57.0.sp, fontWeight: FontWeight.w400),
  displayMedium: TextStyle(
      fontFamily: 'GeneralSans',
      fontSize: 32.0.sp,
      fontWeight: FontWeight.w400,
      height: 40.fromFigmaHeight(32)),
  displaySmall: TextStyle(fontFamily: 'GeneralSans', fontSize: 36.0.sp, fontWeight: FontWeight.w400),

  /// headline
  headlineLarge: TextStyle(
    fontFamily: 'GeneralSans',
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: const Color(0xff023047),
    height: 1.2,
  ),
  headlineMedium: TextStyle(
    fontFamily: 'GeneralSans',
    fontSize: 28.0.sp,
    fontWeight: FontWeight.w600,
    color: const Color(0xff023047),
    height: 32.fromFigmaHeight(28),
  ),
  headlineSmall: TextStyle(
    fontFamily: 'GeneralSans',
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5.w,
    color: const Color(0xff023047),
    height: 32.fromFigmaHeight(24),
  ),

  ///Title
  titleLarge: TextStyle(fontFamily: 'GeneralSans', fontSize: 22.0.sp, fontWeight: FontWeight.w400),
  titleMedium: TextStyle(fontFamily: 'GeneralSans', fontSize: 20.0.sp, fontWeight: FontWeight.w400),
  titleSmall: TextStyle(fontFamily: 'GeneralSans', fontSize: 16.0.sp, fontWeight: FontWeight.w500),

  ///Label
  labelLarge: TextStyle(fontFamily: 'GeneralSans', fontSize: 14.0.sp, fontWeight: FontWeight.w500),
  labelMedium: TextStyle(
    fontFamily: 'GeneralSans',
    fontSize: 18.0.sp,
    fontWeight: FontWeight.w500,
    height: 24.fromFigmaHeight(18),
  ),
  labelSmall: TextStyle(fontFamily: 'GeneralSans', fontSize: 11.0.sp, fontWeight: FontWeight.w500),

  ///Body
  bodyLarge: TextStyle(fontFamily: 'GeneralSans', fontSize: 16.0.sp, fontWeight: FontWeight.w400),
  bodyMedium: TextStyle(
    fontFamily: 'GeneralSans',
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w500,
    height: 24.fromFigmaHeight(16),
  ),
  bodySmall: TextStyle(fontFamily: 'GeneralSans', fontSize: 12.0.sp, fontWeight: FontWeight.w400),
);

//?  Design text styles
extension TextThemeExtension on TextTheme {
  TextStyle get sumImageText => TextStyle(
      fontFamily: 'GeneralSans',
      fontWeight: FontWeight.normal,
      fontSize: 16.sp,
      height: 17.fromFigmaHeight(16));

  TextStyle get paragraphMedium => TextStyle(
      fontFamily: 'GeneralSans',
      fontWeight: FontWeight.normal,
      fontSize: 14.sp,
      height: 20.fromFigmaHeight(14));

  TextStyle get buttonText => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        height: 20.fromFigmaHeight(14),
      );

  TextStyle get regularText => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5.w,
        fontSize: 14.sp,
        height: 18.fromFigmaHeight(14),
      );

  TextStyle get listTitle => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        letterSpacing: -0.5.w,
        height: 16.fromFigmaHeight(16),
      );

  TextStyle get informerText => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
        letterSpacing: -0.5.w,
        height: 16.fromFigmaHeight(12),
      );

  TextStyle get ratingText => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
        letterSpacing: -0.5.w,
        height: 18.9.fromFigmaHeight(14),
      );

  TextStyle get ratingNumber => TextStyle(
        fontFamily: 'GeneralSans',
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
        letterSpacing: -0.5.w,
        height: 13.5.fromFigmaHeight(10),
      );

  ///            <<< NEW TEXT STYLE >>
  /// this text is need to set weight[]  from [FamilyUtils] extension
  TextStyle get display => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 32.sp,
        letterSpacing: -0.16.w,
        height: 40.fromFigmaHeight(32),
      );

  TextStyle get heading => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 24.sp,
        letterSpacing: -0.16.w,
        height: 32.fromFigmaHeight(24),
      );

  TextStyle get label => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 18.sp,
        letterSpacing: -0.16.w,
        height: 24.fromFigmaHeight(18),
      );

  TextStyle get body => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 16.sp,
        letterSpacing: -0.16.w,
        height: 24.fromFigmaHeight(16),
      );

  TextStyle get paragraph => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 14.sp,
        letterSpacing: -0.16.w,
        height: 20.fromFigmaHeight(14),
      );

  TextStyle get footnote => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 12.sp,
        letterSpacing: -0.16.w,
        height: 16.fromFigmaHeight(12),
      );

  TextStyle get xs => TextStyle(
        fontFamily: 'GeneralSans',
        fontSize: 12.sp,
        height: 18.fromFigmaHeight(12),
      );
}

extension FamilyUtils on TextStyle {
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
}

class HelperFont {
  static FontWeight? w440 = FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.4);

  static FontWeight? w430 = FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.3);

  static FontWeight? w460 = FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.6);

  static FontWeight? w428 = FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.28);

  static FontWeight? w472 = FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.72);

  static FontWeight? w536 = FontWeight.lerp(FontWeight.w500, FontWeight.w600, 0.36);
}
