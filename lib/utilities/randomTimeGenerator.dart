import 'dart:async';
import 'dart:math';

import 'package:flutter_android_web_socket/apis/colourInfo_api.dart';
import 'package:flutter_android_web_socket/tempHolder.dart';

class RandomTimeGenerator {
  static final RandomTimeGenerator _randomTimeGenerator =
      RandomTimeGenerator._internal();

  factory RandomTimeGenerator() {
    return _randomTimeGenerator;
  }

  RandomTimeGenerator._internal();

  int generateRandomTime(int min, int max) {
    Random random = Random();
    int r = min + random.nextInt(max - min);
    return r;
  }

  bool _start = false;
  Future<Timer> _scheduleTimeout([int milliseconds = 10000]) async =>
      Timer(Duration(milliseconds: milliseconds), _handleTimeout);

  Future<void> _handleTimeout() async {
    if (_start) {
      _scheduleTimeout(generateRandomTime(10, 20) * 1000);
      final response = await ColourInfoApi().fetchColourInfo();
      TempHolder().addColourInfo(response);
    }
  }

  Future<void> executeTaskOnTime() async {
    _start = true;
    await _scheduleTimeout(); // 5 seconds.
  }

  void stopTaskOnTime() {
    _start = false;
  }
}
