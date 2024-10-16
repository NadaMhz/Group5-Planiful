import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/changesuccess/changesuccess_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'changepass_done_copy_widget.dart' show ChangepassDoneCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangepassDoneCopyModel
    extends FlutterFlowModel<ChangepassDoneCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currentpass widget.
  FocusNode? currentpassFocusNode;
  TextEditingController? currentpassTextController;
  late bool currentpassVisibility;
  String? Function(BuildContext, String?)? currentpassTextControllerValidator;
  // State field(s) for password_new widget.
  FocusNode? passwordNewFocusNode;
  TextEditingController? passwordNewTextController;
  late bool passwordNewVisibility;
  String? Function(BuildContext, String?)? passwordNewTextControllerValidator;
  // State field(s) for passwordConfirm1 widget.
  FocusNode? passwordConfirm1FocusNode;
  TextEditingController? passwordConfirm1TextController;
  late bool passwordConfirm1Visibility;
  String? Function(BuildContext, String?)?
      passwordConfirm1TextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  bool? changePasswordResult;

  @override
  void initState(BuildContext context) {
    currentpassVisibility = false;
    passwordNewVisibility = false;
    passwordConfirm1Visibility = false;
  }

  @override
  void dispose() {
    currentpassFocusNode?.dispose();
    currentpassTextController?.dispose();

    passwordNewFocusNode?.dispose();
    passwordNewTextController?.dispose();

    passwordConfirm1FocusNode?.dispose();
    passwordConfirm1TextController?.dispose();
  }
}
