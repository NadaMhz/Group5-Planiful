import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reminder/fertilizingtip/fertilizingtip_widget.dart';
import '/reminder/rotatingtip/rotatingtip_widget.dart';
import '/reminder/watertip/watertip_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'reminder_setting_widget.dart' show ReminderSettingWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReminderSettingModel extends FlutterFlowModel<ReminderSettingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch1 widget.
  bool? switch1Value;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked1;
  // State field(s) for Switch2 widget.
  bool? switch2Value;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  DateTime? datePicked2;
  // State field(s) for Switch3 widget.
  bool? switch3Value;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
