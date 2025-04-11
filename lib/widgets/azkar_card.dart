import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({
    super.key,
    required this.azkarDataModel,
  });
  final AzkarDataModel azkarDataModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsManager.black,
          border: Border.all(
            color: ColorsManager.gold,
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            azkarDataModel.image,
            height: 185,
            width: 185,
          ),
          Text(
            azkarDataModel.title,
            style: TextStyle(
              color: ColorsManager.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
