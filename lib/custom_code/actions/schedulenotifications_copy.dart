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

Future<void> schedulenotificationsCopy(
  DateTime? time, // When the first notification should fire
  String? number, // Number for repeat interval (e.g., "2" for every 2 weeks)
  String? duration, // 'minute', 'day', 'week', or 'month'
  String? plantName, // Name of the plant
  String? actionType, // Action like watering, fertilizing, rotating
  int plantId, // Plant ID
  int actionTypeCode, // Action Type code (used for unique ID calculation)
) async {
  if (time == null ||
      number == null ||
      duration == null ||
      plantName == null ||
      actionType == null) {
    print("One or more required parameters are null.");
    return;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  await flutterLocalNotificationsPlugin.initialize(
    const InitializationSettings(android: initializationSettingsAndroid),
  );

  // Initialize timezones to ensure proper scheduling
  tz.initializeTimeZones();
  tz.TZDateTime scheduledDate = tz.TZDateTime.from(time, tz.local);

  // Determine the repeat interval based on the provided 'duration'
  Duration repeatInterval;
  int repeatNumber = int.parse(number);

  switch (duration) {
    case 'minute':
      repeatInterval = Duration(minutes: repeatNumber);
      break;
    case 'day':
      repeatInterval = Duration(days: repeatNumber);
      break;
    case 'week':
      repeatInterval = Duration(days: repeatNumber * 7);
      break;
    case 'month':
      repeatInterval = Duration(days: repeatNumber * 30);
      break;
    default:
      return;
  }

  // Notification title and body based on plant and action
  String title = '$plantName ($actionType)';
  String body = _getActionBody(actionType, plantName);

  // Calculate the base notification ID (unique per plant-action combo)
  int baseNotificationId = plantId * 100 + actionTypeCode;

  // Fetch the stored notification details from SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  List<String>? storedDetails =
      prefs.getStringList('notification_$baseNotificationId');

  // Convert the scheduled time to a string format (to compare)
  String scheduledTime = scheduledDate.toString();

  if (storedDetails != null) {
    // Check if the details are the same
    if (storedDetails[0] == plantName &&
        storedDetails[1] == actionType &&
        storedDetails[2] == number &&
        storedDetails[3] == duration &&
        storedDetails[4] == scheduledTime) {
      print(
          "Notification with ID $baseNotificationId is already scheduled with matching details.");
      return; // No need to schedule again
    }
  }

  // Schedule the first notification
  await flutterLocalNotificationsPlugin.zonedSchedule(
    baseNotificationId, // Unique ID for the first notification
    title,
    body,
    scheduledDate,
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'your_channel_id', // Replace with your actual channel ID
        'Your Channel Name',
        channelDescription: 'Your channel description',
        importance: Importance.high,
        priority: Priority.high,
      ),
    ),
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
  );

  // Save the details of the first notification
  await saveNotificationDetails(plantName, actionType, number, duration,
      plantId, actionTypeCode, scheduledTime);

  // Schedule subsequent notifications (10 future notifications in this case)
  for (int i = 1; i < 10; i++) {
    // You can adjust the number of repetitions
    int uniqueNotificationId =
        baseNotificationId + i; // Ensure each ID is unique
    scheduledDate = scheduledDate
        .add(repeatInterval); // Increment the time by repeat interval

    await flutterLocalNotificationsPlugin.zonedSchedule(
      uniqueNotificationId, // Unique ID for each subsequent notification
      title,
      body,
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'your_channel_id', // Replace with your actual channel ID
          'Your Channel Name',
          channelDescription: 'Your channel description',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}

// Helper function to generate the notification body text
String _getActionBody(String? actionType, String plantName) {
  switch (actionType) {
    case 'watering':
      return 'Time to water your plant: $plantName needs hydration!';
    case 'fertilizing':
      return 'Time to fertilize: $plantName needs nutrients!';
    case 'rotating':
      return 'Rotate $plantName for even sunlight distribution!';
    default:
      return 'Check on your plant!';
  }
}
