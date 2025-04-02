import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/icons_manager.dart';

class SuraSearchTextFormField extends StatelessWidget {
  const SuraSearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: ColorsManager.offWhite,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: ColorsManager.white,
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: TextStyle(
          color: ColorsManager.offWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14),
          child: ImageIcon(
            AssetImage(IconsManager.quran),
            color: ColorsManager.gold,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

