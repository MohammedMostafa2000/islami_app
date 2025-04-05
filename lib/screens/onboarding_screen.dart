import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              ImagesManager.islmaiLogo,
              height: 140,
            ),
            SizedBox(height: 80),
            Expanded(
              child: IntroductionScreen(
                pages: [
                  PageViewModel(
                    decoration: PageDecoration(
                      imagePadding: EdgeInsets.all(0),
                      pageMargin: EdgeInsets.all(0),
                      titleTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      bodyTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: "Welcome To Islmi App",
                    body: '',
                    image: Image.asset(
                      ImagesManager.onboarding1,
                      height: 415,
                      width: double.infinity,
                    ),
                  ),
                  PageViewModel(
                    decoration: PageDecoration(
                      imagePadding: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(bottom: 50),
                      pageMargin: EdgeInsets.all(0),
                      titleTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      bodyTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: "Welcome To Islami",
                    body: "We Are Very Excited To Have You In Our Community",
                    image: Image.asset(
                      ImagesManager.onboarding2,
                      height: 415,
                      width: double.infinity,
                    ),
                  ),
                  PageViewModel(
                    decoration: PageDecoration(
                      imagePadding: EdgeInsets.all(0),
                      pageMargin: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(bottom: 50),
                      titleTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      bodyTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: "Reading the Quran",
                    body: "Read, and your Lord is the Most Generous",
                    image: Image.asset(
                      ImagesManager.onboarding3,
                      height: 415,
                      width: double.infinity,
                    ),
                  ),
                  PageViewModel(
                    decoration: PageDecoration(
                      imagePadding: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(bottom: 50),
                      pageMargin: EdgeInsets.all(0),
                      titleTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      bodyTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: "Bearish",
                    body: "Praise the name of your Lord, the Most High",
                    image: Image.asset(
                      ImagesManager.onboarding4,
                      height: 415,
                      width: double.infinity,
                    ),
                  ),
                  PageViewModel(
                    decoration: PageDecoration(
                      imagePadding: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(bottom: 50),
                      pageMargin: EdgeInsets.all(0),
                      titleTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      bodyTextStyle: TextStyle(
                        color: ColorsManager.gold,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: "Holy Quran Radio",
                    body:
                        "You can listen to the Holy Quran Radio through the application for free and easily",
                    image: Image.asset(
                      ImagesManager.onboarding5,
                      height: 415,
                      width: double.infinity,
                    ),
                  ),
                ],
                showNextButton: true,
                showBackButton: true,
                dotsDecorator: DotsDecorator(
                  color: Colors.grey,
                  activeColor: ColorsManager.gold,
                  activeSize: Size(20, 8),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                next: Text(
                  'Next',
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                back: Text(
                  'Back',
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                done: Text(
                  'Finish',
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onDone: () {
                  Navigator.pushNamed(context, AppRoutes.home);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
