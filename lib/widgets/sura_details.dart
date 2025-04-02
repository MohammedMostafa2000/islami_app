import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/icons_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({
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
              Navigator.pushNamed(context, AppRoutes.quranDetails,arguments: suraDataModel);
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
                      '${index + 1}',
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      suraDataModel.suraNameEn,
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      suraDataModel.versesNumber,
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  suraDataModel.suraNameAr,
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
          ),
        ],
      ),
    );
  }
}
