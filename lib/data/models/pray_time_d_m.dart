class TimingsDM {
  final String fajr;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  TimingsDM({
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  factory TimingsDM.fromJson(Map<String, dynamic> json) {
    return TimingsDM(
      fajr: json['Fajr'],
      dhuhr: json['Dhuhr'],
      asr: json['Asr'],
      maghrib: json['Maghrib'],
      isha: json['Isha'],
    );
  }
}
