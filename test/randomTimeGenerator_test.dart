import 'package:flutter_android_web_socket/utilities/RandomTimeGenerator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('make sure generateRandomTime output a time 10 - 20', () {
    int output = RandomTimeGenerator().generateRandomTime(10, 20);
    expect(output, allOf(greaterThan(9), lessThan(21)));
  });
}
