import 'package:flutter_test/flutter_test.dart';
import 'package:stdfn/stdfn.dart';
import 'package:stdfn/stdfn_platform_interface.dart';
import 'package:stdfn/stdfn_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStdfnPlatform
    with MockPlatformInterfaceMixin
    implements StdfnPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StdfnPlatform initialPlatform = StdfnPlatform.instance;

  test('$MethodChannelStdfn is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStdfn>());
  });

  test('getPlatformVersion', () async {
    Stdfn stdfnPlugin = Stdfn();
    MockStdfnPlatform fakePlatform = MockStdfnPlatform();
    StdfnPlatform.instance = fakePlatform;

    expect(await stdfnPlugin.getPlatformVersion(), '42');
  });
}
