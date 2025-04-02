import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/widgets/sura_ar_name_with_patterns.dart';
import 'package:islami_app/widgets/sura_or_hadith_content.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  late SuraDataModel arguments;
  String suraContent = '';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arguments = ModalRoute.of(context)?.settings.arguments as SuraDataModel;
    loadSuraContent(arguments.suraIndex);
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
            SuraArNameWithPatterns(arguments: arguments),
            SizedBox(height: 15),
            SuraOrHadithContent(content: suraContent),
            Image.asset(ImagesManager.suraDetailsBackground),
          ],
        ),
      ),
    );
  }

  void loadSuraContent(int suraIndex) async {
    String fileContent = await rootBundle.loadString('assets/files/suras/$suraIndex.txt');
    var suraLines = fileContent.trim().split('\n');
    List<String> suraLinesFinal = [];
    for (var i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      line += '﴿${i + 1}﴾';
      suraLinesFinal.add(line);
    }

    setState(() {
      suraContent = suraLinesFinal.join(' ');
    });
  }
}
