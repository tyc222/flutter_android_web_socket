import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_web_socket_platform_interface.dart';

/// An implementation of [AndroidWebSocketPlatform] that uses method channels.
class MethodChannelAndroidWebSocket extends AndroidWebSocketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_web_socket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
