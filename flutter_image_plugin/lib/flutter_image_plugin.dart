import 'dart:async';

import 'package:flutter/services.dart';

class FlutterImagePlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_image_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
