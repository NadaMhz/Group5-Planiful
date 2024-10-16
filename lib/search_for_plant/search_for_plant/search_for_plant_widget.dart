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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'search_for_plant_model.dart';
export 'search_for_plant_model.dart';

class SearchForPlantWidget extends StatefulWidget {
  const SearchForPlantWidget({super.key});

  @override
  State<SearchForPlantWidget> createState() => _SearchForPlantWidgetState();
}

class _SearchForPlantWidgetState extends State<SearchForPlantWidget>
    with TickerProviderStateMixin {
  late SearchForPlantModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchForPlantModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.close,
                color: Color(0xFF57636C),
                size: 24.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
                FFAppState().progressValue = 0.0;
                FFAppState().isSearchPressed = false;
                safeSetState(() {});
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Search by',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Urbanist',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: TabBar(
                      labelColor: Color(0xFF129C52),
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      unselectedLabelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      indicatorColor: Color(0xFF129C52),
                      indicatorWeight: 4.0,
                      tabs: [
                        Tab(
                          text: 'Name',
                        ),
                        Tab(
                          text: 'Photo',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 100),
                                            () async {
                                              FFAppState().plantName =
                                                  functions.trimPlantName(_model
                                                      .textController.text)!;
                                              FFAppState().plantName1 =
                                                  functions.trimPlantName(_model
                                                      .textController.text)!;
                                              safeSetState(() {});
                                              if (functions.validatePlantName(
                                                          _model.textController
                                                              .text) !=
                                                      null &&
                                                  functions.validatePlantName(
                                                          _model.textController
                                                              .text) !=
                                                      '') {
                                                _model.isPlantValid = false;
                                                _model.planterrmesg = functions
                                                    .validatePlantName(_model
                                                        .textController.text)!;
                                                safeSetState(() {});
                                              } else {
                                                _model.isPlantValid = true;
                                                _model.planterrmesg = '';
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Plant Name',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: _model.isPlantValid ==
                                                          false
                                                      ? Color(0xFFFF0000)
                                                      : Color(0xFF57636C),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            hintText:
                                                'Please enter your plant name',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      fontSize: 10.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    _model.isPlantValid == false
                                                        ? Color(0xFFFF0000)
                                                        : Color(0xFFE0E3E7),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    _model.isPlantValid == false
                                                        ? Color(0xFFFF0000)
                                                        : Color(0xFF129C52),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsets.all(22.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 50,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          cursorColor: Color(0xFF129C52),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    if (_model.planterrmesg != null &&
                                        _model.planterrmesg != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            _model.planterrmesg,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFFFF0000),
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    Builder(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: ((_model.isPlantValid == false) ||
                                                  (_model.isPlantValid ==
                                                      null) ||
                                                  (functions.validatePlantName(
                                                              _model
                                                                  .textController
                                                                  .text) !=
                                                          null &&
                                                      functions.validatePlantName(
                                                              _model
                                                                  .textController
                                                                  .text) !=
                                                          '') ||
                                                  (functions.trimPlantName(_model
                                                              .textController
                                                              .text) ==
                                                          null ||
                                                      functions.trimPlantName(
                                                              _model.textController.text) ==
                                                          ''))
                                              ? null
                                              : () async {
                                                  _model.apiRes3 =
                                                      await IsValidPlantNameCall
                                                          .call(
                                                    plantName:
                                                        FFAppState().plantName,
                                                  );

                                                  FFAppState().validName =
                                                      getJsonField(
                                                    functions
                                                        .parseJSON(getJsonField(
                                                      (_model.apiRes3
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.choices[:].message.function_call.arguments''',
                                                    ).toString()),
                                                    r'''$.validPlantName''',
                                                  );
                                                  safeSetState(() {});
                                                  if (FFAppState().validName ==
                                                      true) {
                                                    _model.apiResultca1 =
                                                        await SearchForPlantCall
                                                            .call(
                                                      plantName: FFAppState()
                                                          .plantName,
                                                    );

                                                    if ((_model.apiResultca1
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState().watering =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.watering''',
                                                      ).toString();
                                                      FFAppState().rotating =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.rotating''',
                                                      ).toString();
                                                      FFAppState()
                                                              .trermerature =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.temperature''',
                                                      ).toString();
                                                      FFAppState().description =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.description''',
                                                      ).toString();
                                                      FFAppState().soil =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.soil''',
                                                      ).toString();
                                                      FFAppState().namee =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.namee''',
                                                      ).toString();
                                                      FFAppState().isToxic =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.toxic''',
                                                      );
                                                      FFAppState().VplantName =
                                                          getJsonField(
                                                        functions.parseJSON(
                                                            getJsonField(
                                                          (_model.apiResultca1
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                        ).toString()),
                                                        r'''$.correctSpelling''',
                                                      ).toString();
                                                      safeSetState(() {});
                                                      _model.aPI2res =
                                                          await TestCall.call(
                                                        plantName: FFAppState()
                                                            .VplantName,
                                                      );

                                                      FFAppState().image =
                                                          getJsonField(
                                                        (_model.aPI2res
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.hits[0].largeImageURL''',
                                                      ).toString();
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                          'AddPlantPage');
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Error'),
                                                            content:
                                                                Text('Error'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              ErrMsgPlantNameWidget(),
                                                        );
                                                      },
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                          text: 'Search',
                                          options: FFButtonOptions(
                                            width: 170.0,
                                            height: 45.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    18.0, 0.0, 18.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF129C52),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            disabledColor: Color(0x40129C52),
                                            disabledTextColor:
                                                Color(0x85FFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(height: 20.0)),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Container(
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          if (_model.uploadedLocalFile ==
                                                  null ||
                                              (_model.uploadedLocalFile.bytes
                                                      ?.isEmpty ??
                                                  true))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/plant_(1).png',
                                                    width: 120.0,
                                                    height: 120.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (_model.uploadedLocalFile !=
                                                  null &&
                                              (_model.uploadedLocalFile.bytes
                                                      ?.isNotEmpty ??
                                                  false))
                                            Opacity(
                                              opacity:
                                                  FFAppState().isSearchPressed
                                                      ? 0.8
                                                      : 1.0,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60.0),
                                                    child: Image.memory(
                                                      _model.uploadedLocalFile
                                                              .bytes ??
                                                          Uint8List.fromList(
                                                              []),
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (!FFAppState().isSearchPressed)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        30.0, 20.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      safeSetState(() => _model
                                                              .isDataUploading =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                      blurHash:
                                                                          m.blurHash,
                                                                    ))
                                                                .toList();
                                                      } finally {
                                                        _model.isDataUploading =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                              .length ==
                                                          selectedMedia
                                                              .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile =
                                                              selectedUploadedFiles
                                                                  .first;
                                                        });
                                                      } else {
                                                        safeSetState(() {});
                                                        return;
                                                      }
                                                    }
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/file.png',
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          Alignment(1.0, 1.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState().isSearchPressed)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: CircularPercentIndicator(
                                                percent:
                                                    FFAppState().progressValue,
                                                radius: 55.0,
                                                lineWidth: 10.0,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    Color(0xFF129C54),
                                                backgroundColor:
                                                    Color(0xFFE8F5E9),
                                                center: Text(
                                                  'Analyzing...',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        offset:
                                                            Offset(1.0, 1.0),
                                                        blurRadius: 1.0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: PhotoTipsWidget(),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Photo Tips',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: PhotoTipsWidget(),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.info_outline,
                                              color: Color(0xFF129C52),
                                              size: 19.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Builder(
                                builder: (context) => FFButtonWidget(
                                  onPressed: (_model.uploadedLocalFile ==
                                              null ||
                                          (_model.uploadedLocalFile.bytes
                                                  ?.isEmpty ??
                                              true))
                                      ? null
                                      : () async {
                                          FFAppState().isSearchPressed = true;
                                          safeSetState(() {});
                                          _model.uploded =
                                              await UploadimageCall.call(
                                            source: _model.uploadedLocalFile,
                                          );

                                          FFAppState().image = getJsonField(
                                            (_model.uploded?.jsonBody ?? ''),
                                            r'''$.image.image.url''',
                                          ).toString();
                                          FFAppState().progressValue = 0.25;
                                          safeSetState(() {});
                                          _model.apiResultGetNam =
                                              await PlantIdCall.call(
                                            images: getJsonField(
                                              (_model.uploded?.jsonBody ?? ''),
                                              r'''$.image.image.url''',
                                            ).toString(),
                                          );

                                          if ((_model
                                                  .apiResultGetNam?.succeeded ??
                                              true)) {
                                            FFAppState().plantName =
                                                getJsonField(
                                              (_model.apiResultGetNam
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.results[0].species.scientificNameWithoutAuthor''',
                                            ).toString();
                                            FFAppState().progressValue = 0.5;
                                            safeSetState(() {});
                                            _model.apiResultca2 =
                                                await SearchForPlantCall.call(
                                              plantName: FFAppState().plantName,
                                            );

                                            if ((_model
                                                    .apiResultca2?.succeeded ??
                                                true)) {
                                              FFAppState().image = getJsonField(
                                                (_model.uploded?.jsonBody ??
                                                    ''),
                                                r'''$.image.image.url''',
                                              ).toString();
                                              FFAppState().progressValue = 1.0;
                                              safeSetState(() {});
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 1000));

                                              context.pushNamed('AddPlantPage');

                                              FFAppState().watering =
                                                  getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.watering''',
                                              ).toString();
                                              FFAppState().rotating =
                                                  getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.rotating''',
                                              ).toString();
                                              FFAppState().trermerature =
                                                  getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.temperature''',
                                              ).toString();
                                              FFAppState().description =
                                                  getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.description''',
                                              ).toString();
                                              FFAppState().soil = getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.soil''',
                                              ).toString();
                                              FFAppState().namee = getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.namee''',
                                              ).toString();
                                              FFAppState().isToxic =
                                                  getJsonField(
                                                functions
                                                    .parseJSON(getJsonField(
                                                  (_model.apiResultca1
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                ).toString()),
                                                r'''$.toxic''',
                                              );
                                              safeSetState(() {});
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Error'),
                                                    content: Text('Error'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              FFAppState().progressValue = 0.0;
                                              FFAppState().isSearchPressed =
                                                  false;
                                              safeSetState(() {});
                                            }
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child:
                                                      ErrMsgPlantPhotoWidget(),
                                                );
                                              },
                                            );

                                            FFAppState().progressValue = 0.0;
                                            FFAppState().isSearchPressed =
                                                false;
                                            safeSetState(() {});
                                          }

                                          safeSetState(() {});
                                        },
                                  text: 'Search',
                                  options: FFButtonOptions(
                                    width: 170.0,
                                    height: 45.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        18.0, 0.0, 18.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF129C52),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(40.0),
                                    disabledColor: Color(0x40129C52),
                                    disabledTextColor: Color(0x85FFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
