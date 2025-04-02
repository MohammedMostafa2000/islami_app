import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';

class SuraOrHadithContent extends StatelessWidget {
  const SuraOrHadithContent({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: content.isEmpty
          ? Center(
              child: CircularProgressIndicator(color: ColorsManager.gold),
            )
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  content,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20, color: ColorsManager.gold, fontWeight: FontWeight.w600),
                ),
              ),
            ),
    );
  }
}
