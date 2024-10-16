import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/complete_profile/profile_completesuccess/profile_completesuccess_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'complete_profile1_model.dart';
export 'complete_profile1_model.dart';

class CompleteProfile1Widget extends StatefulWidget {
  const CompleteProfile1Widget({super.key});

  @override
  State<CompleteProfile1Widget> createState() => _CompleteProfile1WidgetState();
}

class _CompleteProfile1WidgetState extends State<CompleteProfile1Widget> {
  late CompleteProfile1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfile1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RoleApplicationRecord>>(
      stream: queryRoleApplicationRecord(
        parent: currentUserReference,
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<RoleApplicationRecord> completeProfile1RoleApplicationRecordList =
            snapshot.data!;
        final completeProfile1RoleApplicationRecord =
            completeProfile1RoleApplicationRecordList.isNotEmpty
                ? completeProfile1RoleApplicationRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.28),
                                  child: LinearPercentIndicator(
                                    percent: 1.0,
                                    lineHeight: 10.0,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFF129C52),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    barRadius: Radius.circular(24.0),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                              if ((valueOrDefault<bool>(
                                          currentUserDocument?.isPlantNanny,
                                          false) &&
                                      (completeProfile1RoleApplicationRecord
                                                  ?.applicationStatusNanny ==
                                              null ||
                                          completeProfile1RoleApplicationRecord
                                                  ?.applicationStatusNanny ==
                                              '')) ||
                                  (valueOrDefault<bool>(
                                          currentUserDocument?.isPlantExpert,
                                          false) &&
                                      (completeProfile1RoleApplicationRecord
                                                  ?.applicationStatusExpert ==
                                              null ||
                                          completeProfile1RoleApplicationRecord
                                                  ?.applicationStatusExpert ==
                                              '')))
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.28),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          LinearPercentIndicator(
                                        percent: 0.0,
                                        lineHeight: 10.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        barRadius: Radius.circular(24.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ),
                              if (valueOrDefault(
                                          currentUserDocument?.gender, '') ==
                                      null ||
                                  valueOrDefault(
                                          currentUserDocument?.gender, '') ==
                                      '')
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.28),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          LinearPercentIndicator(
                                        percent: 0.0,
                                        lineHeight: 10.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        barRadius: Radius.circular(24.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 6.0, 16.0),
                            child: Text(
                              'Choose pofile picture',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Urbanist',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 120.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE0E3E7),
                                        borderRadius:
                                            BorderRadius.circular(60.0),
                                        border: Border.all(
                                          color: Color(0xFF129C52),
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(60.0),
                                              child: Image.asset(
                                                'assets/images/Untitled_design_(12).png',
                                                width: 250.0,
                                                height: 120.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          if (_model.uploadedLocalFile1 !=
                                                  null &&
                                              (_model.uploadedLocalFile1.bytes
                                                      ?.isNotEmpty ??
                                                  false))
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(60.0),
                                              child: Image.memory(
                                                _model.uploadedLocalFile1
                                                        .bytes ??
                                                    Uint8List.fromList([]),
                                                width: 120.0,
                                                height: 120.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.977,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  InkWell(
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
                                                          await selectMedia(
                                                        mediaSource: MediaSource
                                                            .photoGallery,
                                                        multiImage: false,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading1 =
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
                                                                            .split('/')
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
                                                          _model.isDataUploading1 =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile1 =
                                                                selectedUploadedFiles
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.camera_alt,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 40.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 20.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: (_model.uploadedLocalFile1 == null ||
                                  (_model.uploadedLocalFile1.bytes?.isEmpty ??
                                      true))
                              ? null
                              : () async {
                                  FFAppState().completedpf1 = true;
                                  safeSetState(() {});
                                  {
                                    safeSetState(
                                        () => _model.isDataUploading2 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];
                                    var selectedMedia = <SelectedFile>[];
                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = _model
                                              .uploadedLocalFile1
                                              .bytes!
                                              .isNotEmpty
                                          ? [_model.uploadedLocalFile1]
                                          : <FFUploadedFile>[];
                                      selectedMedia =
                                          selectedFilesFromUploadedFiles(
                                        selectedUploadedFiles,
                                      );
                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading2 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile2 =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl2 =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  await currentUserReference!
                                      .update(createUserDetailsRecordData(
                                    photoUrl: _model.uploadedFileUrl2,
                                  ));
                                  if (valueOrDefault(
                                              currentUserDocument?.gender,
                                              '') !=
                                          null &&
                                      valueOrDefault(
                                              currentUserDocument?.gender,
                                              '') !=
                                          '') {
                                    if ((valueOrDefault<bool>(
                                                currentUserDocument
                                                    ?.isPlantNanny,
                                                false) &&
                                            (completeProfile1RoleApplicationRecord
                                                        ?.applicationStatusExpert ==
                                                    null ||
                                                completeProfile1RoleApplicationRecord
                                                        ?.applicationStatusExpert ==
                                                    '')) ||
                                        (valueOrDefault<bool>(
                                                currentUserDocument
                                                    ?.isPlantExpert,
                                                false) &&
                                            (completeProfile1RoleApplicationRecord
                                                        ?.applicationStatusExpert ==
                                                    null ||
                                                completeProfile1RoleApplicationRecord
                                                        ?.applicationStatusExpert ==
                                                    ''))) {
                                      context.pushNamed('completeProfile3');
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child:
                                                  ProfileCompletesuccessWidget(),
                                            ),
                                          );
                                        },
                                      );
                                    }
                                  } else {
                                    context.pushNamed('completeProfile2');
                                  }
                                },
                          text: 'Continue',
                          options: FFButtonOptions(
                            width: 230.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF129C52),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(40.0),
                            disabledColor: Color(0x40129C52),
                            disabledTextColor: Color(0x85FFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().completedpf1 = true;
                          safeSetState(() {});
                          if (valueOrDefault(currentUserDocument?.gender, '') !=
                                  null &&
                              valueOrDefault(currentUserDocument?.gender, '') !=
                                  '') {
                            if ((valueOrDefault<bool>(
                                        currentUserDocument?.isPlantNanny,
                                        false) &&
                                    (completeProfile1RoleApplicationRecord
                                                ?.applicationStatusExpert ==
                                            null ||
                                        completeProfile1RoleApplicationRecord
                                                ?.applicationStatusExpert ==
                                            '')) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.isPlantExpert,
                                        false) &&
                                    (completeProfile1RoleApplicationRecord
                                                ?.applicationStatusExpert ==
                                            null ||
                                        completeProfile1RoleApplicationRecord
                                                ?.applicationStatusExpert ==
                                            ''))) {
                              context.pushNamed('completeProfile3');
                            } else {
                              context.pushNamed('viewprofileNEW');
                            }
                          } else {
                            context.pushNamed('completeProfile2');
                          }
                        },
                        text: 'Skip',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x004B986C),
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF129C52),
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
