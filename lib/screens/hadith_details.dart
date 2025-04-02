import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/widgets/sura_or_hadith_content.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  late String hadithContent;
  late int hadithIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments = ModalRoute.of(context)?.settings.arguments as List;
    hadithContent = arguments[0] as String;
    hadithIndex = arguments[1] as int;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImagesManager.leftQuranDetailsPattern,
                      height: 100,
                      width: 90,
                    ),
                    Spacer(),
                    Image.asset(
                      ImagesManager.rightQuranDetailsPattern,
                      height: 100,
                      width: 90,
                    )
                  ],
                ),
                Text(
                  'الحديث $hadithIndex',
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SuraOrHadithContent(content: hadithContent),
            Image.asset(ImagesManager.suraDetailsBackground),
          ],
        ),
      ),
    );
  }
}
