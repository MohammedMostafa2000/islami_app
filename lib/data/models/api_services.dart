import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:islami_app/data/models/pray_time_response.dart';
import 'package:islami_app/data/models/radio_response.dart';

abstract class ApiServices {
  static Future<RadioResponse> getRadiosData() async {
    Uri url = Uri.parse('https://mp3quran.net/api/v3/radios?language=ar');
    var response = await http.get(url);
    log('Response Body: ${response.body}');

    var json = jsonDecode(response.body);
    return RadioResponse.fromJson(json);
  }

  static Future<PrayTimeResponse> getPrayTimes() async {
    Uri url = Uri.parse('https://api.aladhan.com/v1/timingsByCity?city=cairo&country=egypt');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    return PrayTimeResponse.fromJson(json);
  }
}
