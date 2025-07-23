import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/providers/pray_time_view_model.dart';
import 'package:islami_app/widgets/azkar_card.dart';
import 'package:islami_app/widgets/pray_time_card.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => PrayTimeViewModel()..getPrayTimes(),
      child: Consumer<PrayTimeViewModel>(builder: (context, viewModel, child) {
        final nextPrayer = _getNextPrayer(viewModel.timings);

        return viewModel.timings.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.gold,
                ),
              )
            : Container(
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
                                  viewModel.day,
                                  style: TextStyle(
                                    color: ColorsManager.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: CarouselSlider.builder(
                                    itemCount: viewModel.timings.length,
                                    itemBuilder: (context, index, realIndex) {
                                      final entry = viewModel.timings.entries.elementAt(index);

                                      return PrayTimeCard(
                                        title: entry.key,
                                        time: entry.value,
                                      );
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
                                  nextPrayer != null
                                      ? 'Next Prayer - ${nextPrayer.key} at ${nextPrayer.value}'
                                      : 'No more prayers today',
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsManager.white),
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
                            itemBuilder: (context, index) =>
                                AzkarCard(azkarDataModel: azkarList[index]),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              );
      }),
    );
  }
}

MapEntry<String, String>? _getNextPrayer(Map<String, String> timings) {
  final now = DateTime.now();

  for (final entry in timings.entries) {
    final timeParts = entry.value.split(':');
    if (timeParts.length != 2) continue;

    final hour = int.tryParse(timeParts[0]) ?? 0;
    final minute = int.tryParse(timeParts[1]) ?? 0;

    final prayerTime = DateTime(now.year, now.month, now.day, hour, minute);

    if (prayerTime.isAfter(now)) {
      return entry;
    }
  }

  return null;
}
