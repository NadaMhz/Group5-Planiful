import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/changesuccess/changesuccess_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'changepass_done_copy_model.dart';
export 'changepass_done_copy_model.dart';

class ChangepassDoneCopyWidget extends StatefulWidget {
  const ChangepassDoneCopyWidget({super.key});

  @override
  State<ChangepassDoneCopyWidget> createState() =>
      _ChangepassDoneCopyWidgetState();
}

class _ChangepassDoneCopyWidgetState extends State<ChangepassDoneCopyWidget> {
  late ChangepassDoneCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangepassDoneCopyModel());

    _model.currentpassTextController ??= TextEditingController();
    _model.currentpassFocusNode ??= FocusNode();

    _model.passwordNewTextController ??= TextEditingController();
    _model.passwordNewFocusNode ??= FocusNode();

    _model.passwordConfirm1TextController ??= TextEditingController();
    _model.passwordConfirm1FocusNode ??= FocusNode();
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                      FFAppState().errorcurrentpass = '';
                      FFAppState().passwordErrorMsg2 = '';
                      FFAppState().passwordErrorMsg3 = '';
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Text(
                      'Change Your Password',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Urbanist',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                  Text(
                    'Enter your current password and a new password to change your account security.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.currentpassTextController,
                                    focusNode: _model.currentpassFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.currentpassTextController',
                                      Duration(milliseconds: 100),
                                      () async {
                                        if (_model.currentpassTextController
                                                    .text ==
                                                null ||
                                            _model.currentpassTextController
                                                    .text ==
                                                '') {
                                          FFAppState().errorcurrentpass =
                                              'This field is required.';
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().errorcurrentpass = '';
                                          safeSetState(() {});
                                        }
                                      },
                                    ),
                                    autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    obscureText: !_model.currentpassVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Current  Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FFAppState()
                                                            .errorcurrentpass !=
                                                        null &&
                                                    FFAppState()
                                                            .errorcurrentpass !=
                                                        ''
                                                ? Color(0xFFFF0000)
                                                : Color(0xFF57636C),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintText: 'Please enter current password',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .errorcurrentpass !=
                                                      null &&
                                                  FFAppState()
                                                          .errorcurrentpass !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .errorcurrentpass !=
                                                      null &&
                                                  FFAppState()
                                                          .errorcurrentpass !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFF129C52),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding: EdgeInsets.all(20.0),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model.currentpassVisibility =
                                              !_model.currentpassVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.currentpassVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 20,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    cursorColor: Color(0xFF129C52),
                                    validator: _model
                                        .currentpassTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              if (FFAppState().errorcurrentpass != null &&
                                  FFAppState().errorcurrentpass != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().errorcurrentpass,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFFFF0000),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 16.0, 5.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.passwordNewTextController,
                                    focusNode: _model.passwordNewFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.passwordNewTextController',
                                      Duration(milliseconds: 100),
                                      () async {
                                        if (functions.validatePassword(_model
                                                    .passwordNewTextController
                                                    .text) !=
                                                null &&
                                            functions.validatePassword(_model
                                                    .passwordNewTextController
                                                    .text) !=
                                                '') {
                                          FFAppState().passwordErrorMsg2 =
                                              functions.validatePassword(_model
                                                  .passwordNewTextController
                                                  .text)!;
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().passwordErrorMsg2 = '';
                                          safeSetState(() {});
                                        }
                                      },
                                    ),
                                    autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    obscureText: !_model.passwordNewVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'New Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FFAppState()
                                                            .passwordErrorMsg2 !=
                                                        null &&
                                                    FFAppState()
                                                            .passwordErrorMsg2 !=
                                                        ''
                                                ? Color(0xFFFF0000)
                                                : Color(0xFF57636C),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText: 'Please enter password',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .passwordErrorMsg2 !=
                                                      null &&
                                                  FFAppState()
                                                          .passwordErrorMsg2 !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .passwordErrorMsg2 !=
                                                      null &&
                                                  FFAppState()
                                                          .passwordErrorMsg2 !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFF129C52),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding: EdgeInsets.all(20.0),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model.passwordNewVisibility =
                                              !_model.passwordNewVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordNewVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLength: 20,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    cursorColor: Color(0xFF129C52),
                                    validator: _model
                                        .passwordNewTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              if (FFAppState().passwordErrorMsg2 != null &&
                                  FFAppState().passwordErrorMsg2 != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().passwordErrorMsg2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFFFF0000),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 16.0, 5.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.passwordConfirm1TextController,
                                    focusNode: _model.passwordConfirm1FocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.passwordConfirm1TextController',
                                      Duration(milliseconds: 100),
                                      () async {
                                        if (_model.passwordConfirm1TextController
                                                    .text ==
                                                null ||
                                            _model.passwordConfirm1TextController
                                                    .text ==
                                                '') {
                                          FFAppState().passwordErrorMsg3 =
                                              'This field is required.';
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().passwordErrorMsg3 = '';
                                          safeSetState(() {});
                                        }
                                      },
                                    ),
                                    autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    obscureText:
                                        !_model.passwordConfirm1Visibility,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FFAppState()
                                                            .passwordErrorMsg3 !=
                                                        null &&
                                                    FFAppState()
                                                            .passwordErrorMsg3 !=
                                                        ''
                                                ? Color(0xFFFF0000)
                                                : Color(0xFF57636C),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintText:
                                          'Please enter confirmation password',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .passwordErrorMsg3 !=
                                                      null &&
                                                  FFAppState()
                                                          .passwordErrorMsg3 !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FFAppState()
                                                          .passwordErrorMsg3 !=
                                                      null &&
                                                  FFAppState()
                                                          .passwordErrorMsg3 !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFF129C52),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding: EdgeInsets.all(20.0),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model
                                                  .passwordConfirm1Visibility =
                                              !_model
                                                  .passwordConfirm1Visibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordConfirm1Visibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 20,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    cursorColor: Color(0xFF129C52),
                                    validator: _model
                                        .passwordConfirm1TextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              if (FFAppState().passwordErrorMsg3 != null &&
                                  FFAppState().passwordErrorMsg3 != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().passwordErrorMsg3,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFFFF0000),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(height: 1.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: ((FFAppState().errorcurrentpass != null &&
                                    FFAppState().errorcurrentpass != '') ||
                                (FFAppState().passwordErrorMsg2 != null &&
                                    FFAppState().passwordErrorMsg2 != '') ||
                                (FFAppState().passwordErrorMsg3 != null &&
                                    FFAppState().passwordErrorMsg3 != '') ||
                                (_model.currentpassTextController.text ==
                                        null ||
                                    _model.currentpassTextController.text ==
                                        '') ||
                                (_model.passwordNewTextController.text ==
                                        null ||
                                    _model.passwordNewTextController.text ==
                                        '') ||
                                (_model.passwordConfirm1TextController.text ==
                                        null ||
                                    _model.passwordConfirm1TextController
                                            .text ==
                                        ''))
                            ? null
                            : () async {
                                var _shouldSetState = false;
                                if (_model.passwordNewTextController.text ==
                                    _model
                                        .passwordConfirm1TextController.text) {
                                  FFAppState().errorcurrentpass = '';
                                  safeSetState(() {});
                                  _model.changePasswordResult =
                                      await actions.changePassword(
                                    _model.currentpassTextController.text,
                                    _model.passwordNewTextController.text,
                                    currentUserEmail,
                                  );
                                  _shouldSetState = true;
                                  if (_model.changePasswordResult!) {
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
                                            child: ChangesuccessWidget(),
                                          ),
                                        );
                                      },
                                    );
                                  } else {
                                    FFAppState().errorcurrentpass =
                                        'Current  password  is incorrect. Please check and try again.';
                                    safeSetState(() {});
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  FFAppState().passwordErrorMsg3 =
                                      'confirm password  not matching  with new password ';
                                  safeSetState(() {});
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                        text: 'Change Password',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.65,
                          height: 50.0,
                          padding: EdgeInsets.all(5.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF129C52),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
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
                ].divide(SizedBox(height: 1.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
