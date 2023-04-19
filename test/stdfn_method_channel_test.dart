import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stdfn/stdfn_method_channel.dart';

void main() {
  MethodChannelStdfn platform = MethodChannelStdfn();
  const MethodChannel channel = MethodChannel('stdfn');

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
