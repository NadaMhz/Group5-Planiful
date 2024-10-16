import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/search_for_plant/err_msg_plant_photo/err_msg_plant_photo_widget.dart';
import '/search_for_plant/photo_tips/photo_tips_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Uploadimage)] action in Image widget.
  ApiCallResponse? uplodedPhoto;
  // Stores action output result for [Backend Call - API (plantId)] action in Image widget.
  ApiCallResponse? apiResultGetName;
  // Stores action output result for [Backend Call - API (searchForPlant)] action in Image widget.
  ApiCallResponse? apiResultPlantInfo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
