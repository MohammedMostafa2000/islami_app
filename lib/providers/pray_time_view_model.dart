import 'package:flutter/material.dart';
import 'package:islami_app/data/models/api_services.dart';

class PrayTimeViewModel extends ChangeNotifier {
  String day = '';
  Map<String, String> timings = {};
  Future<void> getPrayTimes() async {
    var result = await ApiServices.getPrayTimes();
    day = result.day;
    timings = {
      'Fajr': result.timings.fajr,
      'Dhuhr': result.timings.dhuhr,
      'Asr': result.timings.asr,
      'Maghrib': result.timings.maghrib,
      'Isha': result.timings.isha,
    };
    notifyListeners();
  }
}
