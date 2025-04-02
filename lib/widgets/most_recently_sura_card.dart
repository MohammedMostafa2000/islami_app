import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';

class MostRecentlySuraCard extends StatelessWidget {
  const MostRecentlySuraCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 150,
        width: 283,
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 9,
            vertical: 7,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Al-Anbiya',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.black,
                    ),
                  ),
                  Text(
                    'الأنبياء',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.black,
                    ),
                  ),
                  Text(
                    '112 Verses',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.black,
                    ),
                  ),
                ],
              ),
              Image.asset(ImagesManager.suraImage,height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
