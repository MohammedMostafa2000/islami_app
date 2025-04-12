import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/core/prefs_handler/prefs_handler.dart';
import 'package:islami_app/widgets/most_recently_sura_card.dart';
import 'package:islami_app/widgets/sura_widget.dart';
import 'package:islami_app/widgets/sura_search_text_form_field.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<SuraDataModel> mostRecentSuras = [];
  String searchKey = '';
  List<SuraDataModel> filteredList = [];

  @override
  void initState() {
    super.initState();
    loadMostRecentSuras();
    filteredList = ConstantsManager.surasList;
  }

  void loadMostRecentSuras() async {
    mostRecentSuras = await PrefsHandler.getMostRecentSuras();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ImagesManager.quranTabBackground),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        ImagesManager.islmaiLogo,
                        height: 140,
                      ),
                    ),
                    SizedBox(height: 20),
                    SuraSearchTextFormField(
                      onChanged: (value) {
                        searchKey = value;
                        if (searchKey.isEmpty) {
                          filteredList = ConstantsManager.surasList;
                        } else {
                          filteredList = ConstantsManager.surasList
                              .where((sura) =>
                                  sura.suraNameEn.toLowerCase().contains(searchKey.toLowerCase()) ||
                                  sura.suraNameAr.contains(searchKey))
                              .toList();
                        }

                        setState(() {});
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Most Recently',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.offWhite,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: mostRecentSuras.length,
                        itemBuilder: (context, index) =>
                            MostRecentlySuraCard(suraDataModel: mostRecentSuras[index]),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Suras List',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.offWhite,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => SuraWidget(
                    index: filteredList[index].suraIndex,
                    suraDataModel: filteredList[index],
                  ),
                  childCount: filteredList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
