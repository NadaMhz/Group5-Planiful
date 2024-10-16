import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic parseJSON(String? functionCallJSON) {
  functionCallJSON = functionCallJSON ?? '';
  return jsonDecode(functionCallJSON);
}

String? validatePlantName(String? text) {
// Check if text is null
  if (text == null) {
    return ' ';
  }

  // Check if the text is empty (i.e., only spaces)
  if (text.isEmpty) {
    return 'This field is required';
  }

  // Trim the text to remove leading and trailing spaces (but we keep the untrimmed version)
  String trimmedText = text.trim();

  // Check if length is less than 3
  if (trimmedText.length < 3 && trimmedText.isNotEmpty) {
    return 'Name must be at least 3 characters long.';
  }

  // Check if length is greater than 50
  if (trimmedText.length > 50 && trimmedText.isNotEmpty) {
    return 'Name must not exceed 50 characters.';
  }

  // Regex to check if text contains only letters a-z, A-Z, and spaces
  RegExp regex = RegExp(r'^[a-zA-Z ]+$');
  if (!regex.hasMatch(trimmedText) && trimmedText.isNotEmpty) {
    return 'Name must contain only English letters and spaces.';
  }

  // If all validations pass, return null (indicating the input is valid)
  return null;
}

String? getFirebaseErrorMessage(
  String? errorCode,
  String? password,
  String? confirmPassword,
) {
// Custom password match check
  if (password != null &&
      confirmPassword != null &&
      password != confirmPassword) {
    return 'Passwords do not match.';
  }

  // Firebase error code handling
  switch (errorCode) {
    case 'auth/invalid-email':
      return 'The email address is invalid.';
    case 'auth/email-already-in-use':
      return 'This email address is already in use. Please use a different email.';
    case 'auth/weak-password':
      return 'The password is too weak. Please use a stronger password.';
    case 'auth/user-not-found':
      return 'No user found with this email. Please check the email or sign up.';
    case 'auth/wrong-password':
      return 'Incorrect password. Please try again.';
    case 'auth/phone-number-already-exists':
      return 'This phone number is already associated with another account.';
    case 'auth/invalid-phone-number':
      return 'The phone number entered is invalid.';
    case 'auth/network-request-failed':
      return 'Network error. Please check your connection and try again.';
    case 'auth/too-many-requests':
      return 'Too many attempts. Please try again later.';
    default:
      return 'An unknown error occurred. Please try again.';
  }
}

String? validateEmail(String? email) {
  //  i would like you to help me writing a function that checks if the email writtent in the email field is written in the correct format and also check if the email is empty or null error msg "This Field is requierd" and with 5 letters at minimum error msg "Email must be at least 5 characters." and 254 at maximum error msg "Email must not exceed 254 characters."
  // Check if email is empty or null
  if (email == null || email.isEmpty) {
    return 'This field is required';
  }

  // Check if email length is between 5 and 254 characters and format is correct
  RegExp emailRegex = RegExp(
      r'^[\w-\.]+@(gmail\.com|hotmail\.com|yahoo\.com|outlook\.com|student\.ksu\.edu\.sa|ksu\.edu\.sa)$');

  if (email.length < 5 || email.length > 254 || !emailRegex.hasMatch(email)) {
    return 'Invalid email or domain. Please use a valid email address from one of the following domains: \n'
        '• Gmail\n'
        '• Hotmail\n'
        '• Yahoo\n'
        '• Outlook\n'
        '• KSU (e.g., @student.ksu.edu.sa or @ksu.edu.sa)';
  }

  // If all checks pass, return null
  return null;
}

String? validatePassword(String? password) {
  // i would like you to help me writing a function that checks if the password written in the password field is written in the correct format "^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" error message "Password must be at least 8 characters long  and include an uppercase, lowercase ,   a number, and a special character." and also check if the password is empty or null error msg "This field is required."  and with 8 characters at minimum and 20 at maximum
  // Define the common error message for password rules
  String errorMessage =
      'Password should be 8-20 characters long and include:\n• An uppercase letter\n• A lowercase letter\n• A number\n• A special character (@ \$ ! % * ? &)';

  // Check if password is empty or null
  if (password == null || password.isEmpty) {
    return 'This field is required.';
  }

  // Check if password is not between 8 and 20 characters long
  if (password.length < 8 || password.length > 20) {
    return errorMessage;
  }

  // Check if password meets the required format
  RegExp passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  if (!passwordRegex.hasMatch(password)) {
    return errorMessage;
  }

  // If all checks pass, return null
  return null;
}

String? validateName(String? name) {
  //  i would like you to help me writing a function that checks if the Name written in the Name field is written in the correct format "^[a-zA-Z]+$" error message "Please enter a valid name using letters only." and also check if the name is empty or null error msg "This field is required."  and with 2 characters at minimum  "First Name must be at least 2 characters long." and 20 at maximum "First Name must not exceed 20 characters."
// Check if name is empty or null
  if (name == null || name.isEmpty) {
    return 'This field is required.';
  }

// Check if name is at least 2 characters
  if (name.length < 2) {
    return 'First Name must be at least 2 characters long.';
  }

// Check if name does not exceed 20 characters
  if (name.length > 20) {
    return 'First Name must not exceed 20 characters.';
  }

// Check if name is in correct format
  RegExp nameRegex = RegExp(r'^[a-zA-Z]+$');
  if (!nameRegex.hasMatch(name)) {
    return 'Please enter a valid name using letters only.';
  }

// If all checks pass, return null
  return null;
}

bool? checkspaces(String? text) {
  // Check if text is null or empty
  if (text == null || text.isEmpty) {
    return false;
  }

  // Regex to check if text contains at least one letter and may have spaces
  RegExp regex = RegExp(r'^[a-zA-Z ]*[a-zA-Z]+[a-zA-Z ]*$');
  return regex.hasMatch(text);
}

String? validateNationalAddress(String? nationalAddress) {
  // i would like you to help me writing a function that checks if the national address written in the national address field is written in the correct format "^[A-Z]{4}[0-9]{4}$" error message "Please enter a valid saudi national address with 4 uppercase letters followed by 4 digits (e.g., RRRD2929)." and also check if the national address is empty or null error msg "This field is required."  and with 8 characters exactly "National address must be  8 characters."
// Check if national address is empty or null
  if (nationalAddress == null || nationalAddress.isEmpty) {
    return 'This field is required.';
  }

  // Check if national address is not exactly 8 characters or does not match the required format
  if (nationalAddress.length != 8 ||
      !RegExp(r'^[A-Z]{4}[0-9]{4}$').hasMatch(nationalAddress)) {
    return 'Enter a valid Saudi national address:\n• 4 uppercase letters followed by 4 digits (e.g., RIHA7853).';
  }

  // If all checks pass, return null
  return null;
}

String? validatePhone(String? phone) {
  if (phone == null || phone.isEmpty) {
    return 'This field is required.';
  }

  // Validate if the phone number matches the Saudi format: +966 followed by a space, then 9 digits starting with '5'
  if (!RegExp(r'^\+966 5[0-9]{8}$').hasMatch(phone)) {
    return 'Please enter a valid 9-digit Saudi phone number starting with 5.';
  }

  return null;
}

String? validatePasswordLogIn(String? password) {
  // Check if password is empty or null
  if (password == null || password.isEmpty) {
    return 'This field is required.';
  }
}

String? validatePasswordConfirm(
  String? passwordConfirm,
  String? passwordCreate,
) {
  // i would like you to help me writing a function that checks if the passwordConfirm written in the passwordConfirm field is not empty or null error msg "This field is required."  and i want to compare the 2 passwords to make sure that passwordCreate == passwordConfirm or return suitable error message
  if (passwordConfirm == null || passwordConfirm.isEmpty) {
    return "This field is required.";
  }

  if (passwordCreate != passwordConfirm) {
    return "Passwords don’t match. Please enter the same password in both fields.";
  }

  return null;
}

String? commonNameExtract(String? namee) {
// Check if the input string is null
  if (namee == null || namee.isEmpty) {
    return null; // Return null if input is null or empty
  }

  // Define the start of the common name identifier
  String commonNameIdentifier = 'Common Name:';

  // Find the index where "Common Name:" starts
  int startIndex = namee.indexOf(commonNameIdentifier);

  // If "Common Name:" is found in the string
  if (startIndex != -1) {
    // Adjust the startIndex to exclude "Common Name:" itself
    startIndex += commonNameIdentifier.length;

    // Find where the common name ends (before "Scientific Name:")
    int endIndex = namee.indexOf('Scientific Name:', startIndex);

    // If "Scientific Name:" is found, extract substring
    if (endIndex != -1) {
      return namee.substring(startIndex, endIndex).trim();
    } else {
      // If no "Scientific Name:" is found, extract until the end of the string
      return namee.substring(startIndex).trim();
    }
  }

  // If "Common Name:" is not found, return null
  return null;
}

String? scientificNameExtract(String? namee) {
  // Check if the input string is null
  if (namee == null || namee.isEmpty) {
    return null; // Return null if input is null or empty
  }

  // Define the start of the scientific name identifier
  String scientificNameIdentifier = 'Scientific Name:';

  // Find the index where "Scientific Name:" starts
  int startIndex = namee.indexOf(scientificNameIdentifier);

  // If "Scientific Name:" is found in the string
  if (startIndex != -1) {
    // Adjust the startIndex to exclude "Scientific Name:" itself
    startIndex += scientificNameIdentifier.length;

    // Extract until the end of the string (since it's the last field in the text)
    String scientificName = namee.substring(startIndex).trim();

    // Check if the scientific name ends with a period and remove it if present
    if (scientificName.endsWith('.')) {
      scientificName = scientificName.substring(0, scientificName.length - 1);
    }

    return scientificName;
  }

  // If "Scientific Name:" is not found, return null
  return null;
}

String? validateLastName(String? name) {
//  i would like you to help me writing a function that checks if the Name written in the Name field is written in the correct format "^[a-zA-Z]+$" error message "Please enter a valid name using letters only." and also check if the name is empty or null error msg "This field is required."  and with 2 characters at minimum  "First Name must be at least 2 characters long." and 20 at maximum "First Name must not exceed 20 characters."
// Check if name is empty or null
  if (name == null || name.isEmpty) {
    return 'This field is required.';
  }

// Check if name is at least 2 characters
  if (name.length < 2) {
    return 'Last Name must be at least 2 characters long.';
  }

// Check if name does not exceed 20 characters
  if (name.length > 20) {
    return 'Last Name must not exceed 20 characters.';
  }

// Check if name is in correct format
  RegExp nameRegex = RegExp(r'^[a-zA-Z]+$');
  if (!nameRegex.hasMatch(name)) {
    return 'Please enter a valid name using letters only.';
  }

// If all checks pass, return null
  return null;
}

String? validateEmailSignIn(String? email) {
  // Check if email is empty or null
  if (email == null || email.isEmpty) {
    return 'This field is required';
  }

  // If all checks pass, return null
  return null;
}

String? trimPlantName(String? inputPlantName) {
  // trim the spaces at the start and end of provided string
  if (inputPlantName != null) {
    return inputPlantName.trim();
  }
  return null;
}

String? concatStrings(
  String? number,
  String? iteration,
) {
  return (number?.trim() ?? "") + " " + (iteration ?? "");
}

String? concatSchedule(
  String? pickedTime,
  String? number,
  String? iteration,
) {
  // Check if any argument is null
  if (pickedTime == null || number == null || iteration == null) {
    return "";
  }

  // Return the complete formatted string using pickedTime directly
  return "$pickedTime every ${number.trim()} ${iteration.trim()}";
}

String? validateExperience(String? experience) {
  if (experience == null || experience.isEmpty) {
    return 'This field is required';
  }

  // Ensure the experience has at least 10 characters
  if (experience.length < 10) {
    return 'Experience description must be at least 10 characters long.';
  }

  // Ensure the experience has no more than 500 characters
  if (experience.length > 500) {
    return 'Experience description must not exceed 500 characters.';
  }

  // Regular expression to allow only letters, numbers, and specific punctuation
  final RegExp experienceRegExp = RegExp(r'^[a-zA-Z0-9 .,]+$');

  // Check if the experience contains only valid characters
  if (!experienceRegExp.hasMatch(experience)) {
    return 'Only letters, numbers, and the following Symbols .  ,  :';
  }

  return null; // Return null when valid
}

String? validateRate(int? rate) {
  if (rate == null) {
    return 'This field is required';
  }

  // Ensure the rate is at least SAR 10 and no more than 1000.
  if (rate < 10) {
    return 'Rate must be at least 10 SAR.';
  }

  if (rate > 2000) {
    return 'Rate must be less than 2000 SAR.';
  }

  return null; // Return null when valid
}

String? expertNannyFormText(
  bool? nanny,
  bool? expert,
) {
  // the function takes an inputof two boolean and if 1st is true return one text if other is true return another test and if both it return another text if both false then null
  if (nanny == true && expert == false) {
    return 'We are very excited that you are joining us as a Plant Nanny. But first, please fill out the form below so we can review your application.';
  } else if (nanny == false && expert == true) {
    return 'We are very excited that you are joining us as a Plant Expert. But first, please fill out the form below so we can review your application.';
  } else if (nanny == true && expert == true) {
    return 'We are very excited that you are joining us as a Plant Nanny and Plant Expert. But first, please fill out the form below so we can review your application.';
  } else {
    return null;
  }
}

bool? checkReminderConditions(
  bool? wateringSwitchState,
  String? wateringDropdown1Value,
  String? wateringDropdown2Value,
  bool? rotatingSwitchState,
  String? rotatingDropdown1Value,
  String? rotatingDropdown2Value,
  bool? fertilizingSwitchState,
  String? fertilizingDropdown1Value,
  String? fertilizingDropdown2Value,
  String? fertilizingSelectedTime,
  String? wateringSelectedTime,
  String? rotatingSelectedTime,
) {
  // Check if Watering switch is enabled
  bool wateringValid = true;
  if (wateringSwitchState == true) {
    // Ensure all Watering inputs are valid
    if (wateringDropdown1Value == null ||
        wateringDropdown1Value.isEmpty ||
        wateringDropdown2Value == null ||
        wateringDropdown2Value.isEmpty ||
        wateringSelectedTime == null ||
        wateringSelectedTime.isEmpty) {
      wateringValid = false;
    }
  }

  // Check if Rotating switch is enabled
  bool rotatingValid = true;
  if (rotatingSwitchState == true) {
    // Ensure all Rotating inputs are valid
    if (rotatingDropdown1Value == null ||
        rotatingDropdown1Value.isEmpty ||
        rotatingDropdown2Value == null ||
        rotatingDropdown2Value.isEmpty ||
        rotatingSelectedTime == null ||
        rotatingSelectedTime.isEmpty) {
      rotatingValid = false;
    }
  }

  // Check if Fertilizing switch is enabled
  bool fertilizingValid = true;
  if (fertilizingSwitchState == true) {
    // Ensure all Fertilizing inputs are valid
    if (fertilizingDropdown1Value == null ||
        fertilizingDropdown1Value.isEmpty ||
        fertilizingDropdown2Value == null ||
        fertilizingDropdown2Value.isEmpty ||
        fertilizingSelectedTime == null ||
        fertilizingSelectedTime.isEmpty) {
      fertilizingValid = false;
    }
  }

  // Enable the "Set Reminder" button only if all selected switches have valid inputs
  return !(wateringValid && rotatingValid && fertilizingValid);
}

String? validateFileName(String? fileName) {
  if (fileName == null || fileName.isEmpty) {
    return null;
  }

  // Check if the filename ends with '.pdf'
  if (fileName.toLowerCase().endsWith('.pdf')) {
    return null;
  } else {
    return 'Please upload pdf files only.';
  }
}

String? currentTime() {
  DateTime now = DateTime.now();
  String formattedTime = DateFormat('jm').format(now);
  return formattedTime;
}

String? plantnameFunction(String? plantname) {
  if (plantname == null) {
    return null;
  }

  if (plantname.length < 2) {
    return ' Plant name must be at least 2 characters long.';
  }

  if (plantname.length > 20) {
    return 'Plant name must not exceed 20 characters.';
  }

  RegExp nameRegex = RegExp(r'^[a-zA-Z0-9\s\u0027&\-]+$');
  if (!nameRegex.hasMatch(plantname)) {
    return 'Please enter a valid name using English letter , numbers, spaces, \' & - symbols.';
  }
  return null;
}

int? hashDocID(String? docId) {
  return docId.hashCode;
}
