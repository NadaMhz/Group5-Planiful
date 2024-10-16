// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String> customForgotPassword(
  String emailAddress,
  String messageInvalidEmail,
  String messageSuccess,
  String messageUserNotFound,
) async {
  String returnMessage = messageSuccess;

  // Check if the user exists in the Firestore database before sending the email
  QuerySnapshot userQuery = await FirebaseFirestore.instance
      .collection('UserDetails')
      .where('email', isEqualTo: emailAddress)
      .get();

  if (userQuery.docs.isEmpty) {
    returnMessage = messageUserNotFound; // User doesn't exist
    return returnMessage; // Return early to avoid calling Firebase auth
  }

  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
  } on FirebaseAuthException catch (e) {
    // Handle errors
    switch (e.code) {
      case 'invalid-email':
        returnMessage = messageInvalidEmail;
        break;
      default:
        returnMessage = 'Something went wrong. Please try again.';
    }
  }

  return returnMessage; // Return the final message (either success or error)
}
