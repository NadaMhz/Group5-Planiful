// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> changePassword(
    String currentPassword, String newPassword, String email) async {
  try {
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      // Handle the case where no user is logged in.
      print('No user is currently logged in.');
      return false;
    }

    // Authenticate the user.
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );

    try {
      await user.reauthenticateWithCredential(credential);
    } catch (e) {
      // Handle reauthentication errors.
      print('Reauthentication failed: $e');
      return false;
    }

    // If auth is successful, change the password.
    try {
      await user.updatePassword(newPassword);
    } catch (e) {
      // Handle password change errors.
      print('Password update failed: $e');
      return false;
    }

    // Password changed successfully.
    return true;
  } catch (e) {
    // Handle unexpected errors.
    print('An error occurred: $e');
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
