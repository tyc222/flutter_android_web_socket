import 'android_web_socket_platform_interface.dart';

class AndroidWebSocket {
  Future<String?> getPlatformVersion() {
    return AndroidWebSocketPlatform.instance.getPlatformVersion();
  }

  Future<String?> getWebsocketResponse(String payload) {
    return AndroidWebSocketPlatform.instance.getWebsocketResponse(payload);
  }
}
