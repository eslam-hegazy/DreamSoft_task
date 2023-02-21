import 'package:dreamsoft/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: AppColor.kMainColor,
      elevation: 0,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: AppColor.kMainColor,
      //   statusBarIconBrightness: Brightness.dark,
      //   statusBarBrightness: Brightness.light,
      // ),
    ),
  );
}
