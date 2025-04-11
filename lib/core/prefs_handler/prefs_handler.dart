import 'package:islami_app/core/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsHandler {
  static void addSuraIndex(int suraIndex) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentSurasIndex = prefs.getStringList('most_recent_suras_index') ?? [];
    if (mostRecentSurasIndex.length >= 6) {
      mostRecentSurasIndex.remove(mostRecentSurasIndex.first);
    }
    if (mostRecentSurasIndex.contains('$suraIndex')) {
      mostRecentSurasIndex.remove('$suraIndex');
      mostRecentSurasIndex.add('$suraIndex');
    } else {
      mostRecentSurasIndex.add('$suraIndex');
    }
    prefs.setStringList('most_recent_suras_index', mostRecentSurasIndex);
  }

  static Future<List<SuraDataModel>> getMostRecentSuras() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentSurasIndex = prefs.getStringList('most_recent_suras_index') ?? [];
    List<SuraDataModel> mostRecentSuras = [];
    for (var i = 0; i < mostRecentSurasIndex.length; i++) {
      int index = int.parse(mostRecentSurasIndex[i]);
      mostRecentSuras.add(ConstantsManager.surasList[index]);
    }

    return mostRecentSuras.reversed.toList();
  }
}
