import 'package:flutter_test/flutter_test.dart';
import 'package:android_web_socket/android_web_socket.dart';
import 'package:android_web_socket/android_web_socket_platform_interface.dart';
import 'package:android_web_socket/android_web_socket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidWebSocketPlatform
    with MockPlatformInterfaceMixin
    implements AndroidWebSocketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AndroidWebSocketPlatform initialPlatform = AndroidWebSocketPlatform.instance;

  test('$MethodChannelAndroidWebSocket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidWebSocket>());
  });

  test('getPlatformVersion', () async {
    AndroidWebSocket androidWebSocketPlugin = AndroidWebSocket();
    MockAndroidWebSocketPlatform fakePlatform = MockAndroidWebSocketPlatform();
    AndroidWebSocketPlatform.instance = fakePlatform;

    expect(await androidWebSocketPlugin.getPlatformVersion(), '42');
  });
}
