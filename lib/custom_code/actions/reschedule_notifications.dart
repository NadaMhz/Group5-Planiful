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
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:shared_preferences/shared_preferences.dart';

// Reschedule notifications when app is reopened
Future<void> rescheduleNotifications() async {
  final prefs = await SharedPreferences.getInstance();
  final keys = prefs.getKeys();

  // Check if there are any keys that start with 'notification_'
  if (keys.isEmpty) {
    print("No notifications found in preferences.");
    return; // Exit if no notifications exist
  }

  for (String key in keys) {
    if (key.startsWith('notification_')) {
      final details = prefs.getStringList(key);

      // Ensure details are not null or empty
      if (details == null || details.length < 5) {
        print("Invalid notification details for key: $key");
        continue; // Skip to the next key if details are invalid
      }

      final plantName = details[0];
      final actionType = details[1];
      final number = details[2];
      final duration = details[3];
      final scheduledTime = details[4];

      // Extract plantId and actionTypeCode from the notification ID
      int notificationId = int.parse(key.split('_')[1]); // Extracting ID

      // Calculate plantId and actionTypeCode
      int plantId = notificationId ~/ 100; // Integer division to get plantId
      int actionTypeCode =
          notificationId % 100; // Remainder to get actionTypeCode

      // Reschedule the notification using the stored details
      try {
        await schedulenotificationsCopy(
            DateTime.parse(scheduledTime), // Scheduled time
            number, // Repeat interval number
            duration, // Duration unit (day, week, month)
            plantName, // Plant name
            actionType, // Action type (e.g., watering)
            plantId, // Pass the plantId
            actionTypeCode // Pass the actionTypeCode
            );
      } catch (e) {
        print("Error rescheduling notification for $plantName: $e");
      }
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
