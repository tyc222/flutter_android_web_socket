import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_web_socket_method_channel.dart';

abstract class AndroidWebSocketPlatform extends PlatformInterface {
  /// Constructs a AndroidWebSocketPlatform.
  AndroidWebSocketPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidWebSocketPlatform _instance = MethodChannelAndroidWebSocket();

  /// The default instance of [AndroidWebSocketPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidWebSocket].
  static AndroidWebSocketPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidWebSocketPlatform] when
  /// they register themselves.
  static set instance(AndroidWebSocketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
