import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_web_socket/android_web_socket_method_channel.dart';

void main() {
  MethodChannelAndroidWebSocket platform = MethodChannelAndroidWebSocket();
  const MethodChannel channel = MethodChannel('android_web_socket');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
