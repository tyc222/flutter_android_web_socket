package com.example.android_web_socket

import WebSocketClient
import android.util.Log
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** AndroidWebSocketPlugin */
class AndroidWebSocketPlugin : FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "android_web_socket")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "getWebsocketResponse") {
      val payload = call.argument<String>("payload").toString()
      val socketListener = object : WebSocketClient.SocketListener {
        override fun onMessage(message: String) {
          Log.e("socketCheck onMessage", message)
          result.success(message)
        }
      }

      var webSocketClient: WebSocketClient = WebSocketClient.getInstance()
      webSocketClient.setSocketUrl("wss://ws.postman-echo.com/raw")
      webSocketClient.setListener(socketListener)
      webSocketClient.connect()
      webSocketClient.sendMessage(payload)

    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
