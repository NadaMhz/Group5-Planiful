import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_up/email_sent/email_sent_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_copy_model.dart';
export 'forgot_password_copy_model.dart';

class ForgotPasswordCopyWidget extends StatefulWidget {
  const ForgotPasswordCopyWidget({super.key});

  @override
  State<ForgotPasswordCopyWidget> createState() =>
      _ForgotPasswordCopyWidgetState();
}

class _ForgotPasswordCopyWidgetState extends State<ForgotPasswordCopyWidget> {
  late ForgotPasswordCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordCopyModel());

    _model.emailAddressForgetTextController ??= TextEditingController();
    _model.emailAddressForgetFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
            FFAppState().emailForgetPassErrorMsg = '';
            safeSetState(() {});
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // This row exists for when the "app bar" is hidden on desktop, having a way back for the user can work well.
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Forgot Password',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Urbanist',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                child: Text(
                  'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.emailAddressForgetTextController,
                    focusNode: _model.emailAddressForgetFocusNode,
                    autofocus: true,
                    autofillHints: [AutofillHints.email],
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FFAppState().EmailForgetErrorMsg != null &&
                                    FFAppState().EmailForgetErrorMsg != ''
                                ? Color(0xFFFF0000)
                                : Color(0xFF57636C),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      hintText: 'Please enter your email address',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFAppState().EmailForgetErrorMsg != null &&
                                  FFAppState().EmailForgetErrorMsg != ''
                              ? Color(0xFFFF0000)
                              : Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFAppState().EmailForgetErrorMsg != null &&
                                  FFAppState().EmailForgetErrorMsg != ''
                              ? Color(0xFFFF0000)
                              : Color(0xFF129C52),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF0000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF0000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: EdgeInsets.all(22.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                    maxLength: 254,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            maxLength}) =>
                        null,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator: _model.emailAddressForgetTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().ForgetPassErrorMsg != null &&
                          FFAppState().ForgetPassErrorMsg != '')
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 16.0),
                            child: Icon(
                              Icons.error,
                              color: FlutterFlowTheme.of(context).error,
                              size: 24.0,
                            ),
                          ),
                        ),
                      if (FFAppState().ForgetPassErrorMsg != null &&
                          FFAppState().ForgetPassErrorMsg != '')
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 16.0),
                              child: Text(
                                FFAppState().ForgetPassErrorMsg,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFFFF0000),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
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
                child: Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: ((FFAppState().emailForgetPassErrorMsg !=
                                      null &&
                                  FFAppState().emailForgetPassErrorMsg != '') &&
                              (_model.emailAddressForgetTextController.text ==
                                      null ||
                                  _model.emailAddressForgetTextController
                                          .text ==
                                      ''))
                          ? null
                          : () async {
                              _model.forgetPassResult =
                                  await actions.customForgotPassword(
                                _model.emailAddressForgetTextController.text,
                                'The email address you entered is incorrect or doesn\'t exist. Please check and try again.',
                                'sent',
                                'The email address you entered is incorrect or doesn\'t exist. Please check and try again.',
                              );
                              if (_model.forgetPassResult == 'sent') {
                                FFAppState().ForgetPassErrorMsg = '';
                                safeSetState(() {});
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: EmailSentWidget(),
                                    );
                                  },
                                );
                              } else {
                                FFAppState().ForgetPassErrorMsg =
                                    _model.forgetPassResult!;
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                      text: 'Send Link',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding: EdgeInsets.all(5.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF129C52),
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        disabledColor: Color(0x40129C52),
                        disabledTextColor: Color(0x85FFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
