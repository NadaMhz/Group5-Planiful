import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/search_for_plant/err_msg_plant_photo/err_msg_plant_photo_widget.dart';
import '/search_for_plant/photo_tips/photo_tips_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF129C54),
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0xFFC9ECCD),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 0.0, 10.0),
                            child: Text(
                              'Tap to identify your plant',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Stack(
                              children: [
                                Opacity(
                                  opacity: _model.uploadedLocalFile != null &&
                                          (_model.uploadedLocalFile.bytes
                                                  ?.isNotEmpty ??
                                              false)
                                      ? 0.0
                                      : 1.0,
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
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
                                            safeSetState(() =>
                                                _model.isDataUploading = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
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
                                              _model.isDataUploading = false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile =
                                                    selectedUploadedFiles.first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }

                                          _model.uplodedPhoto =
                                              await UploadimageCall.call(
                                            source: _model.uploadedLocalFile,
                                          );

                                          if (_model.uploadedLocalFile !=
                                                  null &&
                                              (_model.uploadedLocalFile.bytes
                                                      ?.isNotEmpty ??
                                                  false)) {
                                            FFAppState().image = getJsonField(
                                              (_model.uplodedPhoto?.jsonBody ??
                                                  ''),
                                              r'''$.image.image.url''',
                                            ).toString();
                                            FFAppState().progressValue = 0.25;
                                            safeSetState(() {});
                                            _model.apiResultGetName =
                                                await PlantIdCall.call(
                                              images: getJsonField(
                                                (_model.uplodedPhoto
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.image.image.url''',
                                              ).toString(),
                                            );

                                            if ((_model.apiResultGetName
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().plantName =
                                                  getJsonField(
                                                (_model.apiResultGetName
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.results[0].species.scientificNameWithoutAuthor''',
                                              ).toString();
                                              FFAppState().progressValue = 0.5;
                                              safeSetState(() {});
                                              _model.apiResultPlantInfo =
                                                  await SearchForPlantCall.call(
                                                plantName:
                                                    FFAppState().plantName,
                                              );

                                              if ((_model.apiResultPlantInfo
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState().image =
                                                    getJsonField(
                                                  (_model.uplodedPhoto
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.image.image.url''',
                                                ).toString();
                                                FFAppState().progressValue =
                                                    1.0;
                                                safeSetState(() {});
                                                FFAppState().watering =
                                                    getJsonField(
                                                  functions
                                                      .parseJSON(getJsonField(
                                                    (_model.apiResultPlantInfo
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
                                                    (_model.apiResultPlantInfo
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
                                                    (_model.apiResultPlantInfo
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
                                                    (_model.apiResultPlantInfo
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                  ).toString()),
                                                  r'''$.description''',
                                                ).toString();
                                                FFAppState().soil =
                                                    getJsonField(
                                                  functions
                                                      .parseJSON(getJsonField(
                                                    (_model.apiResultPlantInfo
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                  ).toString()),
                                                  r'''$.soil''',
                                                ).toString();
                                                FFAppState().namee =
                                                    getJsonField(
                                                  functions
                                                      .parseJSON(getJsonField(
                                                    (_model.apiResultPlantInfo
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
                                                    (_model.apiResultPlantInfo
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.choices[:].message.tool_calls[:].function.arguments''',
                                                  ).toString()),
                                                  r'''$.toxic''',
                                                );
                                                safeSetState(() {});
                                                if (FFAppState()
                                                        .progressValue ==
                                                    1.0) {
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1000));

                                                  context.pushNamed(
                                                      'AddPlantPage');

                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1000));
                                                  safeSetState(() {
                                                    _model.isDataUploading =
                                                        false;
                                                    _model.uploadedLocalFile =
                                                        FFUploadedFile(
                                                            bytes: Uint8List
                                                                .fromList([]));
                                                  });

                                                  FFAppState().progressValue =
                                                      0.0;
                                                  safeSetState(() {});
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
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
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(
                                                                  dialogContext)
                                                              .unfocus(),
                                                      child:
                                                          ErrMsgPlantPhotoWidget(),
                                                    ),
                                                  );
                                                },
                                              );

                                              safeSetState(() {
                                                _model.isDataUploading = false;
                                                _model.uploadedLocalFile =
                                                    FFUploadedFile(
                                                        bytes:
                                                            Uint8List.fromList(
                                                                []));
                                              });
                                            }
                                          }

                                          safeSetState(() {});
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/___(1).png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(1.0, 1.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.uploadedLocalFile != null &&
                                    (_model.uploadedLocalFile.bytes
                                            ?.isNotEmpty ??
                                        false))
                                  Opacity(
                                    opacity: 0.8,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 10.0, 8.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.memory(
                                            _model.uploadedLocalFile.bytes ??
                                                Uint8List.fromList([]),
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_model.uploadedLocalFile != null &&
                                    (_model.uploadedLocalFile.bytes
                                            ?.isNotEmpty ??
                                        false))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: CircularPercentIndicator(
                                      percent: FFAppState().progressValue,
                                      radius: 60.0,
                                      lineWidth: 10.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF129C54),
                                      backgroundColor: Color(0xFFE8F5E9),
                                      center: Text(
                                        'Analyzing...',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              offset: Offset(1.0, 1.0),
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
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
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
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: PhotoTipsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      'Photo Tips',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 0.0),
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
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: PhotoTipsWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
