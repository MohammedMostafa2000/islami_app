import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isFirstTime = true;

  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
    Timer(Duration(seconds: 2), () {
      isFirstTime
          ? Navigator.pushReplacementNamed(context, AppRoutes.onBoardingScreen)
          : Navigator.pushReplacementNamed(context, AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(ImagesManager.splashScreenLogo),
            Image.asset(ImagesManager.brandingImage),
          ],
        ),
      ),
    );
  }
}
