import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'stdfn_method_channel.dart';

abstract class StdfnPlatform extends PlatformInterface {
  /// Constructs a StdfnPlatform.
  StdfnPlatform() : super(token: _token);

  static final Object _token = Object();

  static StdfnPlatform _instance = MethodChannelStdfn();

  /// The default instance of [StdfnPlatform] to use.
  ///
  /// Defaults to [MethodChannelStdfn].
  static StdfnPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StdfnPlatform] when
  /// they register themselves.
  static set instance(StdfnPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> toAmount() {
    throw UnimplementedError('toAmount() has not been implemented.');
  }

}
