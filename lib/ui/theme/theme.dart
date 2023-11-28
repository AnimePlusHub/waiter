import 'dart:ui';

import 'package:flutter/material.dart';
part 'color/light_color.dart';
part 'text_styles.dart';
part 'button_styles.dart';
class AppTheme{
  static final ThemeData appTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: PlanetMsgColor.white,
    brightness: Brightness.light,
    primaryColor: AppColor.primary,
    cardColor: Colors.white,
    unselectedWidgetColor: Colors.grey,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColor.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: PlanetMsgColor.white,
      iconTheme: IconThemeData(
        color:  PlanetMsgColor.pink,
      ),
      elevation: 0,
    ),
    bottomAppBarTheme: ThemeData.light().bottomAppBarTheme.copyWith(
      color: Colors.white,
      elevation: 0,
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyles.titleStyle.copyWith(color: PlanetMsgColor.pink),
      unselectedLabelColor: AppColor.darkGrey,
      unselectedLabelStyle:
        TextStyles.titleStyle.copyWith(color: AppColor.darkGrey),
      labelColor: PlanetMsgColor.pink,
      labelPadding: const EdgeInsets.symmetric(vertical: 12),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: PlanetMsgColor.pink,
    ),
    colorScheme: const ColorScheme(
      background: Colors.white,
      onPrimary: Colors.white,
      onBackground: Colors.black,
      onError: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      error: Colors.red,
      primary: Colors.pink,
      primaryContainer: Colors.pink,
      secondary: AppColor.secondary,
      secondaryContainer: AppColor.darkGrey,
      surface: Colors.white,
      brightness: Brightness.light,
    ),
  );

  static List<BoxShadow> shadow = <BoxShadow>[
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(5, 5),
      color: AppTheme.appTheme.colorScheme.secondary,
      spreadRadius: -1
    ),
  ];
  static BoxDecoration softDecoration = 
      const BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          blurRadius: 8,
          offset: Offset(5, 5),
          color: Color(0xffe2e5ed),
          spreadRadius: 5,
        ),
        BoxShadow(
          blurRadius: 8,
          offset: Offset(-5, -5),
          color: Color(0xffffffff),
          spreadRadius: 5,
        )
      ],color: Color(0xfff1f3f6));
}