import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/icons_manager.dart';

class SuraSearchTextFormField extends StatelessWidget {
  const SuraSearchTextFormField({
    super.key,
    required this.onChanged,
  });
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: const TextStyle(
        color: ColorsManager.offWhite,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: ColorsManager.white,
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: const TextStyle(
          color: ColorsManager.offWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.all(14),
          child: ImageIcon(
            AssetImage(IconsManager.quran),
            color: ColorsManager.gold,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.gold,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
