import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0;
  void rotateImage() {
    setState(() {
      angle += 1;
      counter++;
      if (counter == 100) {
        counter = 0;
      }
    });
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImagesManager.sebhaTabBackground),
        ),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
          children: [
            Image.asset(
              ImagesManager.islmaiLogo,
              height: 140,
            ),
            SizedBox(height: 16),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
              style:
                  TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: ColorsManager.white),
            ),
            SizedBox(height: 60),
            InkWell(
              onTap: rotateImage,
              child: AnimatedRotation(
                turns: angle,
                duration: Duration(milliseconds: 500),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      ImagesManager.sebhaImage,
                      height: 380,
                    ),
                    Positioned(
                      top: 180,
                      child: Column(
                        children: [
                          Text(
                            counter < 34
                                ? 'الحمد لله'
                                : counter < 67
                                    ? 'الله أكبر'
                                    : 'سبحان الله',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            '$counter',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
