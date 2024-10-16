import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/search_for_plant/err_msg_plant_name/err_msg_plant_name_widget.dart';
import '/search_for_plant/err_msg_plant_photo/err_msg_plant_photo_widget.dart';
import '/search_for_plant/photo_tips/photo_tips_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_for_plant_widget.dart' show SearchForPlantWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SearchForPlantModel extends FlutterFlowModel<SearchForPlantWidget> {
  ///  Local state fields for this component.

  bool? isPlantValid;

  String planterrmesg = ' ';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (isValidPlantName)] action in Button widget.
  ApiCallResponse? apiRes3;
  // Stores action output result for [Backend Call - API (searchForPlant)] action in Button widget.
  ApiCallResponse? apiResultca1;
  // Stores action output result for [Backend Call - API (test)] action in Button widget.
  ApiCallResponse? aPI2res;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Uploadimage)] action in Button widget.
  ApiCallResponse? uploded;
  // Stores action output result for [Backend Call - API (plantId)] action in Button widget.
  ApiCallResponse? apiResultGetNam;
  // Stores action output result for [Backend Call - API (searchForPlant)] action in Button widget.
  ApiCallResponse? apiResultca2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
