import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'editprofile1_model.dart';
export 'editprofile1_model.dart';

class Editprofile1Widget extends StatefulWidget {
  const Editprofile1Widget({super.key});

  @override
  State<Editprofile1Widget> createState() => _Editprofile1WidgetState();
}

class _Editprofile1WidgetState extends State<Editprofile1Widget> {
  late Editprofile1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Editprofile1Model());

    _model.firstNameFocusNode ??= FocusNode();

    _model.lastNameFocusNode ??= FocusNode();

    _model.emailAddressFocusNode ??= FocusNode();

    _model.phoneNumberFocusNode ??= FocusNode();

    _model.nationalAddressFocusNode ??= FocusNode();
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
          backgroundColor: Color(0xFF129C52),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 11.0, 0.0, 0.0),
                          child: Text(
                            'Edit Profile',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.147,
                          height: 520.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE0E3E7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      if (true /* Warning: Trying to access variable not yet defined. */)
                                                        StreamBuilder<
                                                            UserDetailsRecord>(
                                                          stream: UserDetailsRecord
                                                              .getDocument(
                                                                  currentUserReference!),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final imageUserDetailsRecord =
                                                                snapshot.data!;

                                                            return ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/Untitled_design_(12).png',
                                                                width: 200.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      if (true /* Warning: Trying to access variable not yet defined. */)
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: StreamBuilder<
                                                              UserDetailsRecord>(
                                                            stream: UserDetailsRecord
                                                                .getDocument(
                                                                    currentUserReference!),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }

                                                              final imageUserDetailsRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                child: Image
                                                                    .network(
                                                                  imageUserDetailsRecord
                                                                      .photoUrl,
                                                                  width: 80.0,
                                                                  height: 80.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      if (_model.uploadedLocalFile1 !=
                                                              null &&
                                                          (_model
                                                                  .uploadedLocalFile1
                                                                  .bytes
                                                                  ?.isNotEmpty ??
                                                              false))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                            child: Image.memory(
                                                              _model.uploadedLocalFile1
                                                                      .bytes ??
                                                                  Uint8List
                                                                      .fromList(
                                                                          []),
                                                              width: 80.0,
                                                              height: 80.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final selectedMedia =
                                                                await selectMedia(
                                                              mediaSource:
                                                                  MediaSource
                                                                      .photoGallery,
                                                              multiImage: false,
                                                            );
                                                            if (selectedMedia !=
                                                                    null &&
                                                                selectedMedia.every((m) =>
                                                                    validateFileFormat(
                                                                        m.storagePath,
                                                                        context))) {
                                                              safeSetState(() =>
                                                                  _model.isDataUploading1 =
                                                                      true);
                                                              var selectedUploadedFiles =
                                                                  <FFUploadedFile>[];

                                                              try {
                                                                selectedUploadedFiles =
                                                                    selectedMedia
                                                                        .map((m) =>
                                                                            FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
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
                                                                safeSetState(
                                                                    () {
                                                                  _model.uploadedLocalFile1 =
                                                                      selectedUploadedFiles
                                                                          .first;
                                                                });
                                                              } else {
                                                                safeSetState(
                                                                    () {});
                                                                return;
                                                              }
                                                            }
                                                          },
                                                          child: Icon(
                                                            Icons.camera_alt,
                                                            color: Colors.white,
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 16.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      UserDetailsRecord>(
                                                    stream: UserDetailsRecord
                                                        .getDocument(
                                                            currentUserReference!),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }

                                                      final firstNameUserDetailsRecord =
                                                          snapshot.data!;

                                                      return Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                                  .firstNameTextController ??=
                                                              TextEditingController(
                                                            text:
                                                                firstNameUserDetailsRecord
                                                                    .firstName,
                                                          ),
                                                          focusNode: _model
                                                              .firstNameFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.firstNameTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                            () async {
                                                              if (functions.validateName(_model
                                                                          .firstNameTextController
                                                                          .text) !=
                                                                      null &&
                                                                  functions.validateName(_model
                                                                          .firstNameTextController
                                                                          .text) !=
                                                                      '') {
                                                                FFAppState()
                                                                        .nameErrorMsg =
                                                                    functions.validateName(_model
                                                                        .firstNameTextController
                                                                        .text)!;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                FFAppState()
                                                                    .nameErrorMsg = '';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          autofillHints: [
                                                            AutofillHints.name
                                                          ],
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'First Name',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: FFAppState().nameErrorMsg !=
                                                                                  null &&
                                                                              FFAppState().nameErrorMsg !=
                                                                                  ''
                                                                          ? Color(
                                                                              0xFFFF0000)
                                                                          : Color(
                                                                              0xFF57636C),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            hintText:
                                                                'Please enter your first name',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().nameErrorMsg !=
                                                                            null &&
                                                                        FFAppState().nameErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF0000)
                                                                    : Color(
                                                                        0xFFE0E3E7),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().nameErrorMsg !=
                                                                            null &&
                                                                        FFAppState().nameErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF0000)
                                                                    : Color(
                                                                        0xFF129C52),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    20.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          maxLength: 20,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          cursorColor:
                                                              Color(0xFF129C52),
                                                          validator: _model
                                                              .firstNameTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    '[a-zA-Z]'))
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 16.0,
                                                                5.0, 0.0),
                                                    child: StreamBuilder<
                                                        UserDetailsRecord>(
                                                      stream: UserDetailsRecord
                                                          .getDocument(
                                                              currentUserReference!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }

                                                        final lastNameUserDetailsRecord =
                                                            snapshot.data!;

                                                        return TextFormField(
                                                          controller: _model
                                                                  .lastNameTextController ??=
                                                              TextEditingController(
                                                            text:
                                                                lastNameUserDetailsRecord
                                                                    .lastName,
                                                          ),
                                                          focusNode: _model
                                                              .lastNameFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.lastNameTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                            () async {
                                                              if (functions.validateLastName(_model
                                                                          .lastNameTextController
                                                                          .text) !=
                                                                      null &&
                                                                  functions.validateLastName(_model
                                                                          .lastNameTextController
                                                                          .text) !=
                                                                      '') {
                                                                FFAppState()
                                                                        .lastnameErrorMsg =
                                                                    functions.validateLastName(_model
                                                                        .lastNameTextController
                                                                        .text)!;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                FFAppState()
                                                                    .lastnameErrorMsg = '';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          autofillHints: [
                                                            AutofillHints
                                                                .familyName
                                                          ],
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'Last Name',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: FFAppState().lastnameErrorMsg !=
                                                                                  null &&
                                                                              FFAppState().lastnameErrorMsg !=
                                                                                  ''
                                                                          ? Color(
                                                                              0xFFFF0000)
                                                                          : Color(
                                                                              0xFF57636C),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            hintText:
                                                                'Please enter your last name',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().lastnameErrorMsg !=
                                                                            null &&
                                                                        FFAppState().lastnameErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF5963)
                                                                    : Color(
                                                                        0xFFE0E3E7),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().lastnameErrorMsg !=
                                                                            null &&
                                                                        FFAppState().lastnameErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF0000)
                                                                    : Color(
                                                                        0xFF129C52),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    20.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          maxLength: 20,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          cursorColor:
                                                              Color(0xFF129C52),
                                                          validator: _model
                                                              .lastNameTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    '[a-zA-Z]'))
                                                          ],
                                                        );
                                                      },
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE0E3E7),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.email,
                                                color: Color(0xFF129C52),
                                                size: 24.0,
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 10.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      UserDetailsRecord>(
                                                    stream: UserDetailsRecord
                                                        .getDocument(
                                                            currentUserReference!),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }

                                                      final emailAddressUserDetailsRecord =
                                                          snapshot.data!;

                                                      return Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                                  .emailAddressTextController ??=
                                                              TextEditingController(
                                                            text:
                                                                emailAddressUserDetailsRecord
                                                                    .email,
                                                          ),
                                                          focusNode: _model
                                                              .emailAddressFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.emailAddressTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                            () async {
                                                              if (functions.validateEmail(_model
                                                                          .emailAddressTextController
                                                                          .text) !=
                                                                      null &&
                                                                  functions.validateEmail(_model
                                                                          .emailAddressTextController
                                                                          .text) !=
                                                                      '') {
                                                                FFAppState()
                                                                        .emailErrorMsg =
                                                                    functions.validateEmail(_model
                                                                        .emailAddressTextController
                                                                        .text)!;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                FFAppState()
                                                                    .emailErrorMsg = '';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          autofillHints: [
                                                            AutofillHints.email
                                                          ],
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Email Address',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: FFAppState().emailErrorMsg !=
                                                                                  null &&
                                                                              FFAppState().emailErrorMsg !=
                                                                                  ''
                                                                          ? Color(
                                                                              0xFFFF0000)
                                                                          : Color(
                                                                              0xFF57636C),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            hintText:
                                                                'Please enter your email address',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().emailErrorMsg !=
                                                                            null &&
                                                                        FFAppState().emailErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF0000)
                                                                    : Color(
                                                                        0xFFE0E3E7),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FFAppState().emailErrorMsg !=
                                                                            null &&
                                                                        FFAppState().emailErrorMsg !=
                                                                            ''
                                                                    ? Color(
                                                                        0xFFFF0000)
                                                                    : Color(
                                                                        0xFF129C52),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    22.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          maxLength: 254,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          validator: _model
                                                              .emailAddressTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                          if (FFAppState().emailErrorMsg !=
                                                  null &&
                                              FFAppState().emailErrorMsg != '')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        60.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  FFAppState().emailErrorMsg,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            Color(0xFFFF0000),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 18.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.phone,
                                                      color: Color(0xFF129C52),
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      flex: 3,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            UserDetailsRecord>(
                                                          stream: UserDetailsRecord
                                                              .getDocument(
                                                                  currentUserReference!),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final phoneNumberUserDetailsRecord =
                                                                snapshot.data!;

                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                        .phoneNumberTextController ??=
                                                                    TextEditingController(
                                                                  text: phoneNumberUserDetailsRecord
                                                                      .phoneNumber,
                                                                ),
                                                                focusNode: _model
                                                                    .phoneNumberFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.phoneNumberTextController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          100),
                                                                  () async {
                                                                    if (functions.validatePhone(_model.phoneNumberTextController.text) !=
                                                                            null &&
                                                                        functions.validatePhone(_model.phoneNumberTextController.text) !=
                                                                            '') {
                                                                      FFAppState()
                                                                              .phoneErrorMsg =
                                                                          functions.validatePhone(_model
                                                                              .phoneNumberTextController
                                                                              .text)!;
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      FFAppState()
                                                                          .phoneErrorMsg = '';
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                autofillHints: [
                                                                  AutofillHints
                                                                      .telephoneNumber
                                                                ],
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Phone Number',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: FFAppState().phoneErrorMsg != null &&
                                                                                FFAppState().phoneErrorMsg != ''
                                                                            ? Color(0xFFFF0000)
                                                                            : Color(0xFF57636C),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                  alignLabelWithHint:
                                                                      false,
                                                                  hintText:
                                                                      '+966 5XXXXXXXX',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().phoneErrorMsg !=
                                                                                  null &&
                                                                              FFAppState().phoneErrorMsg !=
                                                                                  ''
                                                                          ? Color(
                                                                              0xFFFF0000)
                                                                          : Color(
                                                                              0xFFE0E3E7),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            22.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().phoneErrorMsg !=
                                                                                  null &&
                                                                              FFAppState().phoneErrorMsg !=
                                                                                  ''
                                                                          ? Color(
                                                                              0xFFFF0000)
                                                                          : Color(
                                                                              0xFF129C52),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            22.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            22.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            22.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  contentPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              20.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                cursorColor: Color(
                                                                    0xFF129C52),
                                                                validator: _model
                                                                    .phoneNumberTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model
                                                                      .phoneNumberMask
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 12.0)),
                                                ),
                                              ),
                                              if (FFAppState().phoneErrorMsg !=
                                                      null &&
                                                  FFAppState().phoneErrorMsg !=
                                                      '')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(50.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .phoneErrorMsg,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFFFF0000),
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 18.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons.location_on,
                                                          color:
                                                              Color(0xFF129C52),
                                                          size: 24.0,
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                UserDetailsRecord>(
                                                              stream: UserDetailsRecord
                                                                  .getDocument(
                                                                      currentUserReference!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final nationalAddressUserDetailsRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.nationalAddressTextController ??=
                                                                            TextEditingController(
                                                                      text: nationalAddressUserDetailsRecord
                                                                          .nationalAddress,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .nationalAddressFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.nationalAddressTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              100),
                                                                      () async {
                                                                        if (functions.validateNationalAddress(_model.nationalAddressTextController.text) !=
                                                                                null &&
                                                                            functions.validateNationalAddress(_model.nationalAddressTextController.text) !=
                                                                                '') {
                                                                          FFAppState().nationalAddressErrorMsg = functions.validateNationalAddress(_model
                                                                              .nationalAddressTextController
                                                                              .text)!;
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          FFAppState().nationalAddressErrorMsg =
                                                                              '';
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'National Address',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color: FFAppState().nationalAddressErrorMsg != null && FFAppState().nationalAddressErrorMsg != ''
                                                                                ? Color(0xFFFF0000)
                                                                                : Color(0xFF57636C),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Please enter your  National Address ',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: FFAppState().nationalAddressErrorMsg != null && FFAppState().nationalAddressErrorMsg != ''
                                                                              ? Color(0xFFFF0000)
                                                                              : Color(0xFFE0E3E7),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(22.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: FFAppState().nationalAddressErrorMsg != null && FFAppState().nationalAddressErrorMsg != ''
                                                                              ? Color(0xFFFF0000)
                                                                              : Color(0xFF129C52),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(22.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(22.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(22.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              20.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    maxLength:
                                                                        8,
                                                                    maxLengthEnforcement:
                                                                        MaxLengthEnforcement
                                                                            .enforced,
                                                                    buildCounter: (context,
                                                                            {required currentLength,
                                                                            required isFocused,
                                                                            maxLength}) =>
                                                                        null,
                                                                    cursorColor:
                                                                        Color(
                                                                            0xFF129C52),
                                                                    validator: _model
                                                                        .nationalAddressTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                    inputFormatters: [
                                                                      _model
                                                                          .nationalAddressMask
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 12.0)),
                                                    ),
                                                  ),
                                                  if (FFAppState()
                                                              .nationalAddressErrorMsg !=
                                                          null &&
                                                      FFAppState()
                                                              .nationalAddressErrorMsg !=
                                                          '')
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    50.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFAppState()
                                                              .nationalAddressErrorMsg,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 0.0)),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          FlutterFlowChoiceChips(
                                                        options: [
                                                          ChipData('Male',
                                                              Icons.male),
                                                          ChipData('Female',
                                                              Icons.female)
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(() => _model
                                                                    .choiceChipsValue =
                                                                val?.firstOrNull),
                                                        selectedChipStyle:
                                                            ChipStyle(
                                                          backgroundColor:
                                                              Color(0xFF129C52),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          iconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 18.0,
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        unselectedChipStyle:
                                                            ChipStyle(
                                                          backgroundColor:
                                                              Color(0xFFE0E3E7),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          iconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 18.0,
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        chipSpacing: 20.0,
                                                        rowSpacing: 12.0,
                                                        multiselect: false,
                                                        initialized: _model
                                                                .choiceChipsValue !=
                                                            null,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        controller: _model
                                                                .choiceChipsValueController ??=
                                                            FormFieldController<
                                                                List<String>>(
                                                          [
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.gender,
                                                                '')
                                                          ],
                                                        ),
                                                        wrapped: true,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 0.0)),
                                  ),
                                  Stack(
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            ' Plant Nanny',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFF129C52),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: StreamBuilder<
                                                UserDetailsRecord>(
                                              stream:
                                                  UserDetailsRecord.getDocument(
                                                      currentUserReference!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }

                                                final switch1UserDetailsRecord =
                                                    snapshot.data!;

                                                return Switch.adaptive(
                                                  value: _model.switch1Value ??=
                                                      switch1UserDetailsRecord
                                                          .isPlantNanny,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switch1Value =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  activeTrackColor:
                                                      Color(0xFF129C52),
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                );
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 0.0)),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 35.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                ' Plant Expert',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF129C52),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              StreamBuilder<UserDetailsRecord>(
                                                stream: UserDetailsRecord
                                                    .getDocument(
                                                        currentUserReference!),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }

                                                  final switch2UserDetailsRecord =
                                                      snapshot.data!;

                                                  return Switch.adaptive(
                                                    value: _model
                                                            .switch2Value ??=
                                                        switch2UserDetailsRecord
                                                            .isPlantExpert,
                                                    onChanged:
                                                        (newValue) async {
                                                      safeSetState(() =>
                                                          _model.switch2Value =
                                                              newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    activeTrackColor:
                                                        Color(0xFF129C52),
                                                    inactiveTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                  );
                                                },
                                              ),
                                            ].divide(SizedBox(width: 0.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('viewprofileNEW');
                            },
                            text: 'cancel',
                            options: FFButtonOptions(
                              width: 148.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF868A8E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (_model.uploadedLocalFile1 != null &&
                                  (_model.uploadedLocalFile1.bytes
                                          ?.isNotEmpty ??
                                      false)) {
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
                                  firstName:
                                      _model.firstNameTextController.text,
                                  lastName: _model.lastNameTextController.text,
                                  nationalAddress:
                                      _model.nationalAddressTextController.text,
                                  isPlantNanny: _model.switch1Value,
                                  isPlantExpert: _model.switch2Value,
                                  email: _model.emailAddressTextController.text,
                                  photoUrl: _model.uploadedFileUrl2,
                                  phoneNumber:
                                      _model.phoneNumberTextController.text,
                                  gender: _model.choiceChipsValue,
                                ));

                                context.pushNamed('viewprofileNEW');
                              } else {
                                await currentUserReference!
                                    .update(createUserDetailsRecordData(
                                  firstName:
                                      _model.firstNameTextController.text,
                                  lastName: _model.lastNameTextController.text,
                                  nationalAddress:
                                      _model.nationalAddressTextController.text,
                                  isPlantNanny: _model.switch1Value,
                                  isPlantExpert: _model.switch2Value,
                                  email: _model.emailAddressTextController.text,
                                  phoneNumber:
                                      _model.phoneNumberTextController.text,
                                  gender: _model.choiceChipsValue,
                                ));

                                context.pushNamed('viewprofileNEW');
                              }
                            },
                            text: 'save changes ',
                            options: FFButtonOptions(
                              width: 148.0,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ].divide(SizedBox(width: 15.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
