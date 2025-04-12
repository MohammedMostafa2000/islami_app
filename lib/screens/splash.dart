import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
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
