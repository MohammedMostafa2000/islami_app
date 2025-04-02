import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/widgets/hadith_card_widget.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage(ImagesManager.hadithBackground),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              ImagesManager.islmaiLogo,
              height: 140,
            ),
            SizedBox(height: 55),
            Expanded(
              child: CarouselSlider(
                items: List.generate(50, (index) => index + 1)
                    .map((index) => HadithCardWidget(hadithIndex: index))
                    .toList(),
                options: CarouselOptions(
                  height: 618,
                  enlargeCenterPage: true,
                  viewportFraction: 0.75,
                  aspectRatio: 1,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
