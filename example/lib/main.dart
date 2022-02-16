import 'package:flutter/material.dart';
import 'dart:async';
import 'package:push_notificatio_pd/push_notificatio_pd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




initPlatformState() async {

    try {
      await PushNotificatioPd.notification_push_event();

    }on Exception{
      print("Erro");
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: ()async{
                await initPlatformState();
              },
              child: Text("Ola")

          ),
        ),
      ),
    );
  }
}
