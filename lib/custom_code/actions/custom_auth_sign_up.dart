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

import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

Future<String> customAuthSignUp(
  String emailAddress,
  String password,
  String firstName, // Additional data from sign-up form
  String lastName,
  String nationalAddress,
  bool isPlantNanny, // Boolean for Plant Nanny role
  bool isPlantExpert, // Boolean for Plant Expert role
  String phoneNumber,
  String messageInvalidEmail,
  String messageWeakPassword,
  String messageEmailInUse,
  String messagePhoneExists,
) async {
  String returnAuth = "valid"; // Default return message if successful

  try {
    // First, check if the phone number is already in use
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('UserDetails')
        .where('phone_number', isEqualTo: phoneNumber)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // Phone number already exists in the database
      returnAuth =
          messagePhoneExists; // Return message for phone number already in use
      return returnAuth;
    }

    // If phone number does not exist, create the user in Firebase Authentication
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    // After user is created, save additional information in Firestore
    User? user = userCredential.user; // Get the created user
    if (user != null) {
      // Save user data in Firestore under the UserDetails collection
      await FirebaseFirestore.instance
          .collection('UserDetails')
          .doc(user.uid)
          .set({
        'First_Name': firstName,
        'Last_Name': lastName,
        'National_Address': nationalAddress,
        'is_plant_nanny': isPlantNanny,
        'is_plant_expert': isPlantExpert,
        'phone_number': phoneNumber,
        'email': emailAddress,
        'uid': user.uid, // User ID from Firebase Auth
        'created_time': DateTime.now(), // Timestamp when the user was created
      });
    }
  } on FirebaseAuthException catch (e) {
    // Handle possible errors from Firebase Authentication
    switch (e.code) {
      case 'invalid-email':
        returnAuth = messageInvalidEmail; // Return message for invalid email
        break;
      case 'weak-password':
        returnAuth = messageWeakPassword; // Return message for weak password
        break;
      case 'email-already-in-use':
        returnAuth =
            messageEmailInUse; // Return message if email is already in use
        break;
      default:
        returnAuth = 'Something went wrong. Please try again.';
    }
  }

  return returnAuth; // Return the error message or "valid"
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
