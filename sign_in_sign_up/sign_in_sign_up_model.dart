import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'sign_in_sign_up_widget.dart' show SignInSignUpWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SignInSignUpModel extends FlutterFlowModel<SignInSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 5) {
      return 'Email must be at least 5 characters.';
    }
    if (val.length > 254) {
      return 'Email must not exceed 254 characters.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'The email address entered is invalid. Please try again.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters.';
    }
    if (val.length > 20) {
      return 'Password must not exceed 20 characters.';
    }
    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 8 characters long \nand include uppercase, lowercase, \na number, and a special character.';
    }
    return null;
  }

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 2) {
      return 'First Name must be at least 2 characters long.';
    }
    if (val.length > 20) {
      return 'First Name must not exceed 20 characters.';
    }
    if (!RegExp('^[a-zA-Z]+\$').hasMatch(val)) {
      return 'Please enter a valid name using letters only.';
    }
    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 2) {
      return 'Last Name must be at least 2 characters long.';
    }
    if (val.length > 20) {
      return 'Last Name must not exceed 20 characters.';
    }
    if (!RegExp('^[a-zA-Z]+\$').hasMatch(val)) {
      return 'Please enter a valid name using letters only.';
    }
    return null;
  }

  // State field(s) for NationalAddress widget.
  FocusNode? nationalAddressFocusNode;
  TextEditingController? nationalAddressTextController;
  final nationalAddressMask = MaskTextInputFormatter(mask: 'AAAA####');
  String? Function(BuildContext, String?)?
      nationalAddressTextControllerValidator;
  String? _nationalAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 8) {
      return 'National address must be  8 characters.';
    }
    if (val.length > 8) {
      return 'National address must be  8 characters.';
    }
    if (!RegExp('^[A-Z]{4}[0-9]{4}\$').hasMatch(val)) {
      return 'Please enter a valid saudi national address\nwith 4 uppercase letters followed by 4 digits\n(e.g., RRRD2929).';
    }
    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '+966 #########');
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 9) {
      return 'Phone number must be 9 digits.';
    }
    if (val.length > 14) {
      return 'Phone number must not be 9 digits.';
    }
    if (!RegExp('^\\+966 5[0-9]{8}\$').hasMatch(val)) {
      return 'Please enter a valid 9-digit Saudi phone number \nstarting with 5.';
    }
    return null;
  }

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  String? _emailAddressCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 5) {
      return 'Email must be at least 5 characters.';
    }
    if (val.length > 254) {
      return 'Email must not exceed 254 characters.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'The email address entered is invalid. Please try again.';
    }
    return null;
  }

  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters.';
    }
    if (val.length > 20) {
      return 'Password must not exceed 20 characters.';
    }
    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 8 characters long \nand include uppercase, lowercase, \na number, and a special character.';
    }
    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required.';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters.';
    }
    if (val.length > 20) {
      return 'Password must not exceed 20 characters.';
    }
    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 8 characters long \nand include uppercase, lowercase, \na number, and a special character.';
    }
    return null;
  }

  // State field(s) for NannyCheckbox widget.
  bool? nannyCheckboxValue;
  // State field(s) for ExpertCheckbox widget.
  bool? expertCheckboxValue;

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    nationalAddressTextControllerValidator =
        _nationalAddressTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    emailAddressCreateTextControllerValidator =
        _emailAddressCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    nationalAddressFocusNode?.dispose();
    nationalAddressTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
