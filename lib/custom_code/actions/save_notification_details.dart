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

Future<void> saveNotificationDetails(
  String? plantName,
  String? actionType,
  String? number,
  String? duration,
  int plantId, // Use plantId
  int actionTypeCode, // Use actionTypeCode
  String scheduledTime,
) async {
  final prefs = await SharedPreferences.getInstance();

  // Calculate baseNotificationId
  int baseNotificationId = plantId * 100 + actionTypeCode;

  // Save the details of the first notification (baseNotificationId)
  await prefs.setStringList(
    'notification_$baseNotificationId',
    [plantName!, actionType!, number!, duration!, scheduledTime],
  );
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
