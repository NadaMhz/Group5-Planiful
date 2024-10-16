import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/complete_profile/formsuccess/formsuccess_widget.dart';
import '/complete_profile/profile_completesuccess/profile_completesuccess_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'complete_profile3_widget.dart' show CompleteProfile3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class CompleteProfile3Model extends FlutterFlowModel<CompleteProfile3Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // State field(s) for paymentRate widget.
  FocusNode? paymentRateFocusNode1;
  TextEditingController? paymentRateTextController1;
  String? Function(BuildContext, String?)? paymentRateTextController1Validator;
  // State field(s) for paymentRate widget.
  FocusNode? paymentRateFocusNode2;
  TextEditingController? paymentRateTextController2;
  String? Function(BuildContext, String?)? paymentRateTextController2Validator;
  // Stores action output result for [Custom Action - documentPicker] action in IconButton widget.
  FFUploadedFile? fileData;
  // Stores action output result for [Custom Action - documentPickerCopy] action in IconButton widget.
  FFUploadedFile? filiedata2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    experienceFocusNode?.dispose();
    experienceTextController?.dispose();

    paymentRateFocusNode1?.dispose();
    paymentRateTextController1?.dispose();

    paymentRateFocusNode2?.dispose();
    paymentRateTextController2?.dispose();
  }
}
