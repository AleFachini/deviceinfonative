import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deviceinfonative_platform_interface.dart';

/// An implementation of [DeviceinfonativePlatform] that uses method channels.
class MethodChannelDeviceinfonative extends DeviceinfonativePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deviceinfonative');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
