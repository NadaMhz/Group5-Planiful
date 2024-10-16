// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> cancelNotifications(int plantId, int actionTypeCode) async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Calculate baseNotificationId
  int baseNotificationId = plantId * 100 + actionTypeCode;

  // Cancel each notification in the loop
  for (int i = 0; i < 10; i++) {
    int uniqueNotificationId = baseNotificationId + i;

    // Cancel the notification
    await flutterLocalNotificationsPlugin.cancel(uniqueNotificationId);
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
