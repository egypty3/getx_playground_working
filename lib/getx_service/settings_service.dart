import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService extends GetxService {
  late SharedPreferences _prefs;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    debugPrint('$runtimeType initialize shared preference');
    _prefs = await SharedPreferences.getInstance();
    debugPrint('$runtimeType shared preference ready!');
    if (_prefs.getInt('counter') == null)
      {
        counter.value =  0;
        _prefs.setInt('counter',counter.value) ;
      }


    return this;
  }

  Future<void> incrementCounter() async {
    counter.value = _prefs.getInt('counter')! + 1;
    debugPrint('Pressed $counter times.');
    await _prefs.setInt('counter', counter.value);
  }
}
