import 'package:flutter_test/flutter_test.dart';
import 'package:deviceinfonative/deviceinfonative.dart';
import 'package:deviceinfonative/deviceinfonative_platform_interface.dart';
import 'package:deviceinfonative/deviceinfonative_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceinfonativePlatform
    with MockPlatformInterfaceMixin
    implements DeviceinfonativePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceinfonativePlatform initialPlatform = DeviceinfonativePlatform.instance;

  test('$MethodChannelDeviceinfonative is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceinfonative>());
  });

  test('getPlatformVersion', () async {
    Deviceinfonative deviceinfonativePlugin = Deviceinfonative();
    MockDeviceinfonativePlatform fakePlatform = MockDeviceinfonativePlatform();
    DeviceinfonativePlatform.instance = fakePlatform;

    expect(await deviceinfonativePlugin.getPlatformVersion(), '42');
  });
}
