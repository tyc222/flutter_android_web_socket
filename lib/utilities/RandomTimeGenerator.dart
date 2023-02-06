import 'dart:math';

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
}
