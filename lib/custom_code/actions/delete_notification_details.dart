// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

Future<void> deleteNotificationDetails(int plantId, int actionTypeCode) async {
  final prefs = await SharedPreferences.getInstance();

  // Calculate baseNotificationId
  int baseNotificationId = plantId * 100 + actionTypeCode;

  // Remove stored notification details only for the first notification (baseNotificationId)
  await prefs.remove('notification_$baseNotificationId');
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
