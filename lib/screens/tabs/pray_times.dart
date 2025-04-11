import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/widgets/azkar_card.dart';
import 'package:islami_app/widgets/pray_time_card.dart';

class PrayTimes extends StatelessWidget {
  PrayTimes({super.key});
  final List<AzkarDataModel> azkarList = [
    AzkarDataModel(image: ImagesManager.eveningAzkar, title: 'Evinig Azkar'),
    AzkarDataModel(image: ImagesManager.morningAzkar, title: 'Morning Azkar'),
    AzkarDataModel(image: ImagesManager.wakingAzkar, title: 'Waking Azkar'),
    AzkarDataModel(image: ImagesManager.sleepingAzkar, title: 'Sleeping Azkar'),
  ];
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Azkar',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: ColorsManager.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: azkarList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 390 / 538,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => AzkarCard(azkarDataModel: azkarList[index]),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
