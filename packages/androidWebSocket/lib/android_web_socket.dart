
import 'android_web_socket_platform_interface.dart';

class AndroidWebSocket {
  Future<String?> getPlatformVersion() {
    return AndroidWebSocketPlatform.instance.getPlatformVersion();
  }
}
