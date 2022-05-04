import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/constants.dart';
import 'size_config.dart';

class AppThemes {
  static ThemeData primaryTheme() {
    return ThemeData(
      primaryTextTheme: textTheme(),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(foregroundColor: Colors.white),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Gilroy-Regular',
            fontSize: 12,
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)),
      fontFamily: 'Gilroy-Regular',
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: AppColors.primarysBrandBase,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.greysWhite,
      colorScheme: const ColorScheme.light(primary: AppColors.darkBase),
    );
  }
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(
        fontFamily: 'Gilroy-medium',
        color: AppColors.kText1,
        fontSize: 12,
        fontWeight: FontWeight.w400),
    bodyText2: TextStyle(
        color: AppColors.kText2, fontSize: 12, fontWeight: FontWeight.w400),
  );
}

TextStyle textStyleBold(double size, {Color color = AppColors.kText1}) {
  return TextStyle(
      fontSize: getProportionateScreenWidth(size),
      fontFamily: 'Gilroy-Bold',
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: color);
}

TextStyle textStyleMedium(double size, {Color color = AppColors.kText1}) {
  return TextStyle(
      fontSize: getProportionateScreenWidth(size),
      fontFamily: 'Gilroy-medium',
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: color);
}

TextStyle textStyleRegular(double size, {Color color = AppColors.kText1}) {
  return TextStyle(
    fontSize: getProportionateScreenWidth(size),
    color: color,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );
}
