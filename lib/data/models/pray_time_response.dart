import 'package:islami_app/data/models/pray_time_d_m.dart';

class PrayTimeResponse {
  final int code;
  final String status;
  final String day;
  final TimingsDM timings;

  PrayTimeResponse({
    required this.code,
    required this.status,
    required this.day,
    required this.timings,
  });

  factory PrayTimeResponse.fromJson(Map<String, dynamic> json) {
    return PrayTimeResponse(
      code: json['code'],
      status: json['status'],
      day: json['data']['date']['gregorian']['weekday']['en'],
      timings: TimingsDM.fromJson(json['data']['timings']),
    );
  }
}
