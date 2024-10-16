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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String> customAuthLogin(
  String emailAddress,
  String password,
  String messageInvalidEmail,
  String messageWrongPassword,
  String messageUserNotFound,
) async {
  String returnAuth = "valid"; // Default return message if successful

  try {
    // Sign the user in using Firebase Authentication
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    // If login is successful, return "valid"
    return returnAuth;
  } on FirebaseAuthException catch (e) {
    // Handle possible errors from Firebase Authentication
    switch (e.code) {
      case 'invalid-email':
        returnAuth = messageInvalidEmail; // Return message for invalid email
        break;
      case 'wrong-password':
        returnAuth = messageWrongPassword; // Return message for wrong password
        break;
      case 'user-not-found':
        returnAuth = messageUserNotFound; // Return message if user not found
        break;
      default:
        returnAuth =
            'Something went wrong. Please try again.'; // Handle unknown errors
    }
  }

  return returnAuth; // Return the error message or "valid"
}
