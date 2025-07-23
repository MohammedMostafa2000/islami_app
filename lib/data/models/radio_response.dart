import 'package:islami_app/data/models/radio_data_model.dart';

class RadioResponse {
  List<RadioDataModel>? radios;

  RadioResponse({
    this.radios,
  });

  factory RadioResponse.fromJson(Map<String, dynamic> json) {
    return RadioResponse(
      radios: (json['radios'] as List<dynamic>).map((e) => RadioDataModel.fromJson(e)).toList(),
    );
  }
}
