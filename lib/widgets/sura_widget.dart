import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/icons_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';
import 'package:islami_app/providers/most_recent_suras_provider.dart';
import 'package:provider/provider.dart';

class SuraWidget extends StatelessWidget {
  const SuraWidget({
    super.key,
    required this.suraDataModel,
    required this.index,
  });
  final SuraDataModel suraDataModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.quranDetails,
                  arguments: suraDataModel);
              Provider.of<MostRecentSurasProvider>(context, listen: false)
                  .addSuraToMostRecent(index - 1);
            },
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      IconsManager.suraNumberIcon,
                      height: 52,
                    ),
                    Text(
                      '$index',
                      style: const TextStyle(
                        color: ColorsManager.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      suraDataModel.suraNameEn,
                      style: const TextStyle(
                        color: ColorsManager.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      suraDataModel.versesNumber,
                      style: const TextStyle(
                        color: ColorsManager.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  suraDataModel.suraNameAr,
                  style: const TextStyle(
                    color: ColorsManager.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 40,
            endIndent: 40,
          ),
        ],
      ),
    );
  }
}
