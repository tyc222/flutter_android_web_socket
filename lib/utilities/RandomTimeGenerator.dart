import 'dart:async';
import 'dart:math';

class RandomTimeGenerator {
  static final RandomTimeGenerator _randomTimeGenerator =
      RandomTimeGenerator._internal();

  factory RandomTimeGenerator() {
    return _randomTimeGenerator;
  }

  RandomTimeGenerator._internal();

  int _generateRandomTime(int min, int max) {
    Random random = Random();
    int r = min + random.nextInt(max - min);
    return r;
  }

  bool _start = false;
  Timer _scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), _handleTimeout);

  void _handleTimeout() {
    if (_start) {
      print('hi');
      _scheduleTimeout(_generateRandomTime(1, 2) * 1000);
    }
  }

  void executeTaskOnTime() {
    _start = true;
    _scheduleTimeout(); // 5 seconds.
  }

  void stopTaskOnTime() {
    _start = false;
  }
}
