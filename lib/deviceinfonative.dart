
import 'deviceinfonative_platform_interface.dart';

class Deviceinfonative {
  Future<String?> getPlatformVersion() {
    return DeviceinfonativePlatform.instance.getPlatformVersion();
  }
}
