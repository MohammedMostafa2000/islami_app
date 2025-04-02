import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith_details.dart';
import 'package:islami_app/screens/home.dart';
import 'package:islami_app/screens/quran_details.dart';
import 'package:islami_app/screens/splash.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String quranDetails = '/quranDetails';
  static const String hadithDetails = '/hadithDetails';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => Splash(),
    home: (_) => Home(),
    quranDetails:(_)=>QuranDetails(),
    hadithDetails:(_)=>HadithDetails(),
    
  };
}
