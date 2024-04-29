import 'dart:convert';

import 'package:catalyst_app/notification_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotficationServices notificationServices = NotficationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.isTokenRefresh();
    notificationServices.firebaseInit(context);
    notificationServices
        .getDeviceToken()
        .then((value) => {print("device token:  $value")});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  notificationServices.getDeviceToken().then((value) async {
                    print(value);
                    var data = {
                      // 'to' : '', you can put your static device token of android here and then send notifications from ios
                      'to': value.toString(),
                      'notification': {
                        'title': 'Catalyst Test',
                        'body': 'Flutter Firebase Push Notifications',
                      },
                      'android': {
                        'notification': {
                          'notification_count': 23,
                        },
                      },
                      'data': {'type': 'ahsan', 'id': '1'}
                    };
                    await http.post(
                        Uri.parse('https://fcm.googleapis.com/fcm/send'),
                        body: jsonEncode(data),
                        headers: {
                          'Content-Type': 'application/json; charset=UTF-8',
                          'Authorization':
                              'key=AAAA-xVLenM:APA91bFG2OOyWyTmO0l5tSW4tDHpvqXF0QTRit06WXGInspre09LVzGhjaQGmue827JxpKEobalN2ocrfDmSdqeRY5eOPKzeo30E4ZWPz4gJAroiJr0SPfOWcnWO4K3k75KNV8G72R1E'
                        });
                  });
                },
                child: Text("Send Notification")),
            ElevatedButton(
                onPressed: () {
                  throw Exception();
                },
                child: Text("Throw Exception")),
          ],
        ),
      ),
    );
  }
}
