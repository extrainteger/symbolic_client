import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:symbolic_client/symbolic_client.dart';

void main() {
  const MethodChannel channel = MethodChannel('symbolic_client');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SymbolicClient.platformVersion, '42');
  });
}
