
import 'dart:async';

import 'package:flutter/services.dart';

class PushNotificatioPd {

   static Future  notification(String texto,String titulo) async {
    await MethodChannel('push_notificatio_pd').invokeMethod('notification',{
      "texto": texto,
      "titulo": titulo
    });
  }


   static Future  notification_push_event() async {
    await MethodChannel('push_notificatio_pd').invokeMapMethod('not_event');
  }
}
