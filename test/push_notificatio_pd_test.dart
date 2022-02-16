import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:push_notificatio_pd/push_notificatio_pd.dart';

void main() {
  const MethodChannel channel = MethodChannel('push_notificatio_pd');

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
    expect(await PushNotificatioPd.platformVersion, '42');
  });
}
