import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';

class AppTheme {
  static final ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: ColorsManager.gold),
        centerTitle: true,
        backgroundColor: ColorsManager.black,
        titleTextStyle:
            TextStyle(color: ColorsManager.gold, fontSize: 20, fontWeight: FontWeight.bold)),
    scaffoldBackgroundColor: ColorsManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.black,
      backgroundColor: ColorsManager.gold,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
