import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/images_manager.dart';
import 'package:islami_app/core/routes_manager/app_routes.dart';

class HadithCardWidget extends StatefulWidget {
  const HadithCardWidget({
    super.key,
    required this.hadithIndex,
  });
  final int hadithIndex;

  @override
  State<HadithCardWidget> createState() => _HadithCardWidgetState();
}

class _HadithCardWidgetState extends State<HadithCardWidget> {
  String hadithContent = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loadHadithContent(1);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hadithDetails, arguments: [hadithContent,widget.hadithIndex]);
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImagesManager.leftQuranDetailsPattern,
                        height: 92,
                        color: ColorsManager.black,
                      ),
                      Image.asset(
                        ImagesManager.rightQuranDetailsPattern,
                        height: 92,
                        color: ColorsManager.black,
                      ),
                    ],
                  ),
                  Text(
                    'الحديث ${widget.hadithIndex}',
                    style: TextStyle(
                      color: ColorsManager.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            /// نص الحديث
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Expanded(
                      child: hadithContent == ''
                          ? Center(
                              child: CircularProgressIndicator(
                              color: ColorsManager.black,
                            ))
                          : Text(
                              textDirection: TextDirection.rtl,
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsManager.black),
                              hadithContent,
                            ),
                    ),
                  ],
                ),
              ),
            ),

            /// الصورة المثبتة في الأسفل
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                ImagesManager.suraDetailsBackground,
                color: ColorsManager.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadHadithContent(int hadithIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/hadeeth/h${widget.hadithIndex}.txt');
    var hadithLines = fileContent.trim().split('\n');
    List<String> hadithLinesFinal = [];
    for (var i = 1; i < hadithLines.length; i++) {
      String line = hadithLines[i];
      hadithLinesFinal.add(line);
    }
    hadithContent = hadithLinesFinal.join(' ');

    setState(() {});
  }
}
