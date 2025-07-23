import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/data/models/api_services.dart';
import 'package:islami_app/data/models/radio_data_model.dart';

class RadioTabViewModel extends ChangeNotifier {
  bool isLoading = true;
  String errorMessage = '';
  List<RadioDataModel> radiosList = [];
  final AudioPlayer _audioPlayer = AudioPlayer();
  int? _currentPlayingIndex;
  int? get currentPlayingIndex => _currentPlayingIndex;

  bool _isMuted = false;
  bool get isMuted => _isMuted;

  Future<void> getRadios() async {
    try {
      var result = await ApiServices.getRadiosData();
      radiosList = result.radios!;
      isLoading = false;
      notifyListeners();
    } catch (e) {
      errorMessage = '$e';
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> togglePlay(int index, String url) async {
    if (_currentPlayingIndex == index) {
      await _audioPlayer.pause();
      _currentPlayingIndex = null;
    } else {
      await _audioPlayer.stop();
      await _audioPlayer.play(UrlSource(url));
      _currentPlayingIndex = index;
    }
    notifyListeners();
  }

  Future<void> toggleSound() async {
    _isMuted = !_isMuted;
    await _audioPlayer.setVolume(_isMuted ? 0 : 1);
    notifyListeners();
  }
}
