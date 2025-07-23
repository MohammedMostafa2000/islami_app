class RadioDataModel {
  int? id;
  String? name;
  String? url;
  String? recentDate;

  RadioDataModel({    
    this.id,
    this.name,
    this.url,
    this.recentDate,
  });

  factory RadioDataModel.fromJson(Map<String, dynamic> json) {
    return RadioDataModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      url: json['url'] ?? '',
      recentDate: json['recent_date'] ?? '',
    );
  }
}
