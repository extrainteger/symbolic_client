import 'dart:async';

import 'package:flutter/services.dart';

class SymbolicClient {
  static const MethodChannel _channel =
      const MethodChannel('symbolic_client');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
