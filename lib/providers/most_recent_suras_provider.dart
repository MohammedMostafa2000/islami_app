import 'package:flutter/material.dart';
import 'package:islami_app/core/constants.dart';
import 'package:islami_app/core/prefs_handler/prefs_handler.dart';

class MostRecentSurasProvider extends ChangeNotifier {
  List<SuraDataModel> _mostRecentSuras = [];

  List<SuraDataModel> get mostRecentSuras => _mostRecentSuras;

  Future<void> loadMostRecentSuras() async {
    _mostRecentSuras = await PrefsHandler.getMostRecentSuras();
    notifyListeners();
  }

  Future<void> addSuraToMostRecent(int index) async {
    PrefsHandler.addSuraIndex(index);
    await loadMostRecentSuras();
  }
}
