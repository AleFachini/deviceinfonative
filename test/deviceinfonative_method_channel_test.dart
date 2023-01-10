import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deviceinfonative/deviceinfonative_method_channel.dart';

void main() {
  MethodChannelDeviceinfonative platform = MethodChannelDeviceinfonative();
  const MethodChannel channel = MethodChannel('deviceinfonative');

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
