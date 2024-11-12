import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:beacons_plugin/beacons_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('beacons_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // TODO: platformVersion isn't defined for the type BeaconsPlugin, resolve later
  // test('getPlatformVersion', () async {
  //   expect(await BeaconsPlugin.platformVersion, '42');
  // });
}
