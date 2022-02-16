
import 'dart:async';

import 'package:flutter/services.dart';

class PushNotificatioPd {
  static const MethodChannel _channel = MethodChannel('push_notificatio_pd');



  static Future  notification_push_event() async {
    await _channel.invokeMapMethod('not_event');

  }
}
