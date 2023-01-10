import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deviceinfonative_method_channel.dart';

abstract class DeviceinfonativePlatform extends PlatformInterface {
  /// Constructs a DeviceinfonativePlatform.
  DeviceinfonativePlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceinfonativePlatform _instance = MethodChannelDeviceinfonative();

  /// The default instance of [DeviceinfonativePlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceinfonative].
  static DeviceinfonativePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceinfonativePlatform] when
  /// they register themselves.
  static set instance(DeviceinfonativePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
