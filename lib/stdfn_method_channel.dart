import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'stdfn_platform_interface.dart';

/// An implementation of [StdfnPlatform] that uses method channels.
class MethodChannelStdfn extends StdfnPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('stdfn');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> toAmount() async {
    final version = await methodChannel.invokeMethod<String>('toAmount');
    return version;
  }
}
