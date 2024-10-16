// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> isPhoneNumberUnique(String phoneNumber) async {
  var usersQuery = await FirebaseFirestore.instance
      .collection('UserDetails')
      .where('phone_number', isEqualTo: phoneNumber)
      .get();

  return usersQuery
      .docs.isEmpty; // Returns true if no users with this phone number
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
