import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/images_manager.dart';

class SuraArNameWithPatterns extends StatelessWidget {
  const SuraArNameWithPatterns({
    super.key,
    required this.arguments,
  });

  final SuraDataModel arguments;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImagesManager.leftQuranDetailsPattern,
              height: 92,
            ),
            Image.asset(
              ImagesManager.rightQuranDetailsPattern,
              height: 92,
            ),
          ],
        ),
        Text(
          arguments.suraNameAr,
          style: TextStyle(
            color: ColorsManager.gold,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
