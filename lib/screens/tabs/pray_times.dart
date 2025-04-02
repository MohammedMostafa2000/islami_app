import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';

class PrayTimes extends StatelessWidget {
  const PrayTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImagesManager.timeTabBackground),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              ImagesManager.islmaiLogo,
              height: 140,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorsManager.gold,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Text(
                    'Pray Time',
                    style: TextStyle(
                      color: ColorsManager.darkGold,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Tuesday',
                    style: TextStyle(
                      color: ColorsManager.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider.builder(
                      itemCount: 10,
                      itemBuilder: (context, index, realIndex) {
                        return PrayTimeCard();
                      },
                      options: CarouselOptions(
                        height: 128,
                        enlargeCenterPage: true,
                        viewportFraction: 0.30,
                        aspectRatio: 1,
                      ),
                    ),
                  ),
                  Text(
                    'Next Pray - 02:32',
                    style: TextStyle(
                      color: ColorsManager.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrayTimeCard extends StatelessWidget {
  const PrayTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
