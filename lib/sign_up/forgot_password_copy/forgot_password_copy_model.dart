import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_up/email_sent/email_sent_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'forgot_password_copy_widget.dart' show ForgotPasswordCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordCopyModel
    extends FlutterFlowModel<ForgotPasswordCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressForget widget.
  FocusNode? emailAddressForgetFocusNode;
  TextEditingController? emailAddressForgetTextController;
  String? Function(BuildContext, String?)?
      emailAddressForgetTextControllerValidator;
  // Stores action output result for [Custom Action - customForgotPassword] action in Button widget.
  String? forgetPassResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressForgetFocusNode?.dispose();
    emailAddressForgetTextController?.dispose();
  }
}
