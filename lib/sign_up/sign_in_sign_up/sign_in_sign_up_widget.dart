import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_up/account_created/account_created_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'sign_in_sign_up_model.dart';
export 'sign_in_sign_up_model.dart';

class SignInSignUpWidget extends StatefulWidget {
  const SignInSignUpWidget({super.key});

  @override
  State<SignInSignUpWidget> createState() => _SignInSignUpWidgetState();
}

class _SignInSignUpWidgetState extends State<SignInSignUpWidget>
    with TickerProviderStateMixin {
  late SignInSignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInSignUpModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.firstNameTextController ??= TextEditingController();
    _model.firstNameFocusNode ??= FocusNode();

    _model.lastNameTextController ??= TextEditingController();
    _model.lastNameFocusNode ??= FocusNode();

    _model.nationalAddressTextController ??= TextEditingController();
    _model.nationalAddressFocusNode ??= FocusNode();

    _model.phoneNumberTextController ??= TextEditingController();
    _model.phoneNumberFocusNode ??= FocusNode();

    _model.emailAddressCreateTextController ??= TextEditingController();
    _model.emailAddressCreateFocusNode ??= FocusNode();

    _model.passwordCreateTextController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmTextController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: AppBar(
            backgroundColor: Color(0xFFF2F4F2),
            automaticallyImplyLeading: false,
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/Black_and_Green_Flat_Illustrated_Organic_Cosmetics_Logo_(8).png',
                            width: double.infinity,
                            height: 126.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 602.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                        ),
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Container(
                            width: double.infinity,
                            height: 700.0,
                            constraints: BoxConstraints(
                              maxWidth: 602.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(0.0, 0),
                                  child: TabBar(
                                    isScrollable: true,
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    labelPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            32.0, 0.0, 32.0, 0.0),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                        ),
                                    unselectedLabelStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                            ),
                                    indicatorColor: Color(0xFF129C52),
                                    indicatorWeight: 4.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 12.0),
                                    tabs: [
                                      Tab(
                                        text: 'Sign In',
                                      ),
                                      Tab(
                                        text: 'Sign Up',
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
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 10.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Let\'s get started by filling out the form below.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressTextController,
                                                    focusNode: _model
                                                        .emailAddressFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.emailAddressTextController',
                                                      Duration(
                                                          milliseconds: 100),
                                                      () async {
                                                        if (functions.validateEmailSignIn(
                                                                    _model
                                                                        .emailAddressTextController
                                                                        .text) !=
                                                                null &&
                                                            functions.validateEmailSignIn(
                                                                    _model
                                                                        .emailAddressTextController
                                                                        .text) !=
                                                                '') {
                                                          FFAppState()
                                                                  .emailErrorMsg =
                                                              functions.validateEmailSignIn(
                                                                  _model
                                                                      .emailAddressTextController
                                                                      .text)!;
                                                          safeSetState(() {});
                                                        } else {
                                                          FFAppState()
                                                              .emailErrorMsg = '';
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                    ),
                                                    autofocus: true,
                                                    autofillHints: [
                                                      AutofillHints.email
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
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
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFAppState()
                                                                          .emailErrorMsg !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .emailErrorMsg !=
                                                                      ''
                                                              ? Color(
                                                                  0xFFFF0000)
                                                              : Color(
                                                                  0xFFE0E3E7),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFAppState()
                                                                          .emailErrorMsg !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .emailErrorMsg !=
                                                                      ''
                                                              ? Color(
                                                                  0xFFFF0000)
                                                              : Color(
                                                                  0xFF129C52),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFFF0000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFFF0000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          EdgeInsets.all(22.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
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
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .emailAddressTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              if (FFAppState().emailErrorMsg !=
                                                      null &&
                                                  FFAppState().emailErrorMsg !=
                                                      '')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(19.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .emailErrorMsg,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordTextController,
                                                    focusNode: _model
                                                        .passwordFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.passwordTextController',
                                                      Duration(
                                                          milliseconds: 100),
                                                      () async {
                                                        if (functions.validatePasswordLogIn(
                                                                    _model
                                                                        .passwordTextController
                                                                        .text) !=
                                                                null &&
                                                            functions.validatePasswordLogIn(
                                                                    _model
                                                                        .passwordTextController
                                                                        .text) !=
                                                                '') {
                                                          FFAppState()
                                                                  .passwordErrorMsg =
                                                              functions.validatePasswordLogIn(
                                                                  _model
                                                                      .passwordTextController
                                                                      .text)!;
                                                          safeSetState(() {});
                                                        } else {
                                                          FFAppState()
                                                              .passwordErrorMsg = '';
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                    ),
                                                    autofocus: false,
                                                    autofillHints: [
                                                      AutofillHints.password
                                                    ],
                                                    obscureText: !_model
                                                        .passwordVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FFAppState().passwordErrorMsg !=
                                                                            null &&
                                                                        FFAppState().passwordErrorMsg !=
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
                                                          'Please enter password',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFAppState()
                                                                          .passwordErrorMsg !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .passwordErrorMsg !=
                                                                      ''
                                                              ? Color(
                                                                  0xFFFF0000)
                                                              : Color(
                                                                  0xFFE0E3E7),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFAppState()
                                                                          .passwordErrorMsg !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .passwordErrorMsg !=
                                                                      ''
                                                              ? Color(
                                                                  0xFFFF0000)
                                                              : Color(
                                                                  0xFF129C52),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFFF0000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFFF0000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          EdgeInsets.all(22.0),
                                                      suffixIcon: InkWell(
                                                        onTap: () =>
                                                            safeSetState(
                                                          () => _model
                                                                  .passwordVisibility =
                                                              !_model
                                                                  .passwordVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .passwordTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              if (FFAppState()
                                                          .passwordErrorMsg !=
                                                      null &&
                                                  FFAppState()
                                                          .passwordErrorMsg !=
                                                      '')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(19.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .passwordErrorMsg,
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
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'ForgotPasswordCopy');
                                                    },
                                                    text: 'Forgot Password?',
                                                    options: FFButtonOptions(
                                                      width: 151.0,
                                                      height: 44.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: Color(
                                                                    0xFF129C52),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                              .SignInErrorMsg !=
                                                          null &&
                                                      FFAppState()
                                                              .SignInErrorMsg !=
                                                          '')
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Icon(
                                                          Icons.error,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                              .SignInErrorMsg !=
                                                          null &&
                                                      FFAppState()
                                                              .SignInErrorMsg !=
                                                          '')
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Text(
                                                            FFAppState()
                                                                .SignInErrorMsg,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFFFF0000),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: ((FFAppState()
                                                                        .emailErrorMsg !=
                                                                    null &&
                                                                FFAppState().emailErrorMsg !=
                                                                    '') ||
                                                            (FFAppState().passwordErrorMsg !=
                                                                    null &&
                                                                FFAppState().passwordErrorMsg !=
                                                                    '') ||
                                                            (_model.emailAddressTextController
                                                                        .text ==
                                                                    null ||
                                                                _model.emailAddressTextController
                                                                        .text ==
                                                                    '') ||
                                                            (_model.passwordTextController
                                                                        .text ==
                                                                    null ||
                                                                _model.passwordTextController
                                                                        .text ==
                                                                    ''))
                                                        ? null
                                                        : () async {
                                                            _model.signInResult =
                                                                await actions
                                                                    .customAuthLogin(
                                                              _model
                                                                  .emailAddressTextController
                                                                  .text,
                                                              _model
                                                                  .passwordTextController
                                                                  .text,
                                                              'Your email or password is incorrect, or this account doesn’t exist. Please check and try again.',
                                                              'Your email or password is incorrect, or this account doesn’t exist. Please check and try again.',
                                                              'Your email or password is incorrect, or this account doesn’t exist. Please check and try again.',
                                                            );
                                                            if (_model
                                                                    .signInResult ==
                                                                'valid') {
                                                              FFAppState()
                                                                  .SignInErrorMsg = '';
                                                              safeSetState(
                                                                  () {});

                                                              context.pushNamed(
                                                                  'MyPlant');
                                                            } else {
                                                              FFAppState()
                                                                      .SignInErrorMsg =
                                                                  'Your email or password is incorrect, or this account doesn’t exist. Please check and try again.';
                                                              safeSetState(
                                                                  () {});
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                    text: 'Sign In',
                                                    options: FFButtonOptions(
                                                      width: 230.0,
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFF129C52),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                40.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                40.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                40.0),
                                                        topRight:
                                                            Radius.circular(
                                                                40.0),
                                                      ),
                                                      disabledColor:
                                                          Color(0x40129C52),
                                                      disabledTextColor:
                                                          Color(0x85FFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Let\'s get started by filling out the form below.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 16.0,
                                                          12.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .firstNameTextController,
                                                      focusNode: _model
                                                          .firstNameFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.firstNameTextController',
                                                        Duration(
                                                            milliseconds: 100),
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
                                                                functions.validateName(
                                                                    _model
                                                                        .firstNameTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .nameErrorMsg = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      autofillHints: [
                                                        AutofillHints.name
                                                      ],
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText: 'First Name',
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
                                                            color: FFAppState()
                                                                            .nameErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .nameErrorMsg !=
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
                                                            color: FFAppState()
                                                                            .nameErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .nameErrorMsg !=
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
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .allow(RegExp(
                                                                '[a-zA-Z]'))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState().nameErrorMsg !=
                                                        null &&
                                                    FFAppState().nameErrorMsg !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .nameErrorMsg,
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
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                16.0,
                                                                12.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .lastNameTextController,
                                                      focusNode: _model
                                                          .lastNameFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.lastNameTextController',
                                                        Duration(
                                                            milliseconds: 100),
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
                                                                functions.validateLastName(
                                                                    _model
                                                                        .lastNameTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .lastnameErrorMsg = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      autofillHints: [
                                                        AutofillHints.familyName
                                                      ],
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText: 'Last Name',
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
                                                            color: FFAppState()
                                                                            .lastnameErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .lastnameErrorMsg !=
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
                                                            color: FFAppState()
                                                                            .lastnameErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .lastnameErrorMsg !=
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
                                                            letterSpacing: 0.0,
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
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .allow(RegExp(
                                                                '[a-zA-Z]'))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                            .lastnameErrorMsg !=
                                                        null &&
                                                    FFAppState()
                                                            .lastnameErrorMsg !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .lastnameErrorMsg,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 16.0,
                                                          12.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .nationalAddressTextController,
                                                      focusNode: _model
                                                          .nationalAddressFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.nationalAddressTextController',
                                                        Duration(
                                                            milliseconds: 100),
                                                        () async {
                                                          if (functions.validateNationalAddress(_model
                                                                      .nationalAddressTextController
                                                                      .text) !=
                                                                  null &&
                                                              functions.validateNationalAddress(_model
                                                                      .nationalAddressTextController
                                                                      .text) !=
                                                                  '') {
                                                            FFAppState()
                                                                    .nationalAddressErrorMsg =
                                                                functions.validateNationalAddress(
                                                                    _model
                                                                        .nationalAddressTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .nationalAddressErrorMsg = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText:
                                                            'National Address',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FFAppState().nationalAddressErrorMsg !=
                                                                              null &&
                                                                          FFAppState().nationalAddressErrorMsg !=
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
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            'Please enter your Saudi National Address (e.g., RIHA7757)',
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
                                                            color: FFAppState()
                                                                            .nationalAddressErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .nationalAddressErrorMsg !=
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
                                                            color: FFAppState()
                                                                            .nationalAddressErrorMsg !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .nationalAddressErrorMsg !=
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
                                                            letterSpacing: 0.0,
                                                          ),
                                                      maxLength: 8,
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
                                                          .nationalAddressTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .nationalAddressMask
                                                      ],
                                                    ),
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
                                                                  19.0,
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
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      flex: 3,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    16.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .phoneNumberTextController,
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
                                                                if (functions.validatePhone(_model
                                                                            .phoneNumberTextController
                                                                            .text) !=
                                                                        null &&
                                                                    functions.validatePhone(_model
                                                                            .phoneNumberTextController
                                                                            .text) !=
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
                                                            autofocus: true,
                                                            autofillHints: [
                                                              AutofillHints
                                                                  .telephoneNumber
                                                            ],
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Phone Number',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
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
                                                                  color: FFAppState().phoneErrorMsg !=
                                                                              null &&
                                                                          FFAppState().phoneErrorMsg !=
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
                                                                  EdgeInsets
                                                                      .all(
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
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                if (FFAppState()
                                                            .phoneErrorMsg !=
                                                        null &&
                                                    FFAppState()
                                                            .phoneErrorMsg !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
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
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 16.0,
                                                          12.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .emailAddressCreateTextController,
                                                      focusNode: _model
                                                          .emailAddressCreateFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.emailAddressCreateTextController',
                                                        Duration(
                                                            milliseconds: 100),
                                                        () async {
                                                          if (functions.validateEmail(_model
                                                                      .emailAddressCreateTextController
                                                                      .text) !=
                                                                  null &&
                                                              functions.validateEmail(_model
                                                                      .emailAddressCreateTextController
                                                                      .text) !=
                                                                  '') {
                                                            FFAppState()
                                                                    .emailErrorMsg2 =
                                                                functions.validateEmail(
                                                                    _model
                                                                        .emailAddressCreateTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .emailErrorMsg2 = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
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
                                                                  color: FFAppState().emailErrorMsg2 !=
                                                                              null &&
                                                                          FFAppState().emailErrorMsg2 !=
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
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            'Please enter your email address (e.g., plantiful@gmail.com)',
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
                                                            color: FFAppState()
                                                                            .emailErrorMsg2 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .emailErrorMsg2 !=
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
                                                            color: FFAppState()
                                                                            .emailErrorMsg2 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .emailErrorMsg2 !=
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
                                                            letterSpacing: 0.0,
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
                                                          Color(0xFF129C52),
                                                      validator: _model
                                                          .emailAddressCreateTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                            .emailErrorMsg2 !=
                                                        null &&
                                                    FFAppState()
                                                            .emailErrorMsg2 !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .emailErrorMsg2,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 16.0,
                                                          12.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passwordCreateTextController,
                                                      focusNode: _model
                                                          .passwordCreateFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.passwordCreateTextController',
                                                        Duration(
                                                            milliseconds: 100),
                                                        () async {
                                                          if (functions.validatePassword(_model
                                                                      .passwordCreateTextController
                                                                      .text) !=
                                                                  null &&
                                                              functions.validatePassword(_model
                                                                      .passwordCreateTextController
                                                                      .text) !=
                                                                  '') {
                                                            FFAppState()
                                                                    .passwordErrorMsg2 =
                                                                functions.validatePassword(
                                                                    _model
                                                                        .passwordCreateTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .passwordErrorMsg2 = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      autofillHints: [
                                                        AutofillHints.password
                                                      ],
                                                      obscureText: !_model
                                                          .passwordCreateVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FFAppState().passwordErrorMsg2 !=
                                                                              null &&
                                                                          FFAppState().passwordErrorMsg2 !=
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
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            'Please enter password',
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
                                                            color: FFAppState()
                                                                            .passwordErrorMsg2 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .passwordErrorMsg2 !=
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
                                                            color: FFAppState()
                                                                            .passwordErrorMsg2 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .passwordErrorMsg2 !=
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
                                                        suffixIcon: InkWell(
                                                          onTap: () =>
                                                              safeSetState(
                                                            () => _model
                                                                    .passwordCreateVisibility =
                                                                !_model
                                                                    .passwordCreateVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordCreateVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                          .passwordCreateTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                            .passwordErrorMsg2 !=
                                                        null &&
                                                    FFAppState()
                                                            .passwordErrorMsg2 !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .passwordErrorMsg2,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 16.0,
                                                          12.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passwordConfirmTextController,
                                                      focusNode: _model
                                                          .passwordConfirmFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.passwordConfirmTextController',
                                                        Duration(
                                                            milliseconds: 100),
                                                        () async {
                                                          if (functions.validatePasswordConfirm(
                                                                      _model
                                                                          .passwordConfirmTextController
                                                                          .text,
                                                                      _model
                                                                          .passwordCreateTextController
                                                                          .text) !=
                                                                  null &&
                                                              functions.validatePasswordConfirm(
                                                                      _model
                                                                          .passwordConfirmTextController
                                                                          .text,
                                                                      _model
                                                                          .passwordCreateTextController
                                                                          .text) !=
                                                                  '') {
                                                            FFAppState()
                                                                    .passwordErrorMsg3 =
                                                                functions.validatePasswordConfirm(
                                                                    _model
                                                                        .passwordConfirmTextController
                                                                        .text,
                                                                    _model
                                                                        .passwordCreateTextController
                                                                        .text)!;
                                                            safeSetState(() {});
                                                          } else {
                                                            FFAppState()
                                                                .passwordErrorMsg3 = '';
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                      autofocus: true,
                                                      autofillHints: [
                                                        AutofillHints.password
                                                      ],
                                                      obscureText: !_model
                                                          .passwordConfirmVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Confirm Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FFAppState().passwordErrorMsg3 !=
                                                                              null &&
                                                                          FFAppState().passwordErrorMsg3 !=
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
                                                            'Please enter confirmation password',
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
                                                            color: FFAppState()
                                                                            .passwordErrorMsg3 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .passwordErrorMsg3 !=
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
                                                            color: FFAppState()
                                                                            .passwordErrorMsg3 !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .passwordErrorMsg3 !=
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
                                                        suffixIcon: InkWell(
                                                          onTap: () =>
                                                              safeSetState(
                                                            () => _model
                                                                    .passwordConfirmVisibility =
                                                                !_model
                                                                    .passwordConfirmVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordConfirmVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      minLines: 1,
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
                                                          .passwordConfirmTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                            .passwordErrorMsg3 !=
                                                        null &&
                                                    FFAppState()
                                                            .passwordErrorMsg3 !=
                                                        '')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  19.0,
                                                                  5.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .passwordErrorMsg3,
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      16.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            'Additional Roles',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF384E58),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                visualDensity:
                                                                    VisualDensity
                                                                        .compact,
                                                                materialTapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .nannyCheckboxValue ??=
                                                                  false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                safeSetState(() =>
                                                                    _model.nannyCheckboxValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              ),
                                                              activeColor: Color(
                                                                  0xFF129C52),
                                                              checkColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Text(
                                                          'Be a Plant Nanny',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      AlignedTooltip(
                                                        content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: Text(
                                                            'A plant nanny is someone who looks after plants while owners are away, offering personalized care and photo updates. \n\nIf you don\'t select this role, you can still manage your plants by adding them to your care list, setting reminders, buying or selling plants, and utilizing Plant Nanny and Plant Expert services when needed.',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        offset: 4.0,
                                                        preferredDirection:
                                                            AxisDirection.up,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        backgroundColor:
                                                            Color(0xFFF1F3F5),
                                                        elevation: 4.0,
                                                        tailBaseWidth: 24.0,
                                                        tailLength: 12.0,
                                                        waitDuration: Duration(
                                                            milliseconds: 100),
                                                        showDuration: Duration(
                                                            milliseconds: 2000),
                                                        triggerMode:
                                                            TooltipTriggerMode
                                                                .tap,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Icon(
                                                            Icons.info_outline,
                                                            color: Color(
                                                                0xFF129C52),
                                                            size: 19.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                visualDensity:
                                                                    VisualDensity
                                                                        .compact,
                                                                materialTapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                      .expertCheckboxValue ??=
                                                                  false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                safeSetState(() =>
                                                                    _model.expertCheckboxValue =
                                                                        newValue!);
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              ),
                                                              activeColor: Color(
                                                                  0xFF129C52),
                                                              checkColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Text(
                                                          'Be a Plant Expert',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      AlignedTooltip(
                                                        content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: Text(
                                                            'A plant expert is someone who provides personalized advice on plant care through online consultations or in-person visits. \n\nIf you don\'t select this role, you can still manage your plants by adding them to your care list, setting reminders, buying or selling plants, and utilizing Plant Nanny and Plant Expert services when needed.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        offset: 4.0,
                                                        preferredDirection:
                                                            AxisDirection.up,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        backgroundColor:
                                                            Color(0xFFF1F3F5),
                                                        elevation: 4.0,
                                                        tailBaseWidth: 24.0,
                                                        tailLength: 12.0,
                                                        waitDuration: Duration(
                                                            milliseconds: 100),
                                                        showDuration: Duration(
                                                            milliseconds: 2000),
                                                        triggerMode:
                                                            TooltipTriggerMode
                                                                .tap,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Icon(
                                                            Icons.info_outline,
                                                            color: Color(
                                                                0xFF129C52),
                                                            size: 19.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (FFAppState()
                                                                  .SignUpErrorMsg !=
                                                              null &&
                                                          FFAppState()
                                                                  .SignUpErrorMsg !=
                                                              '')
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        16.0),
                                                            child: Icon(
                                                              Icons.error,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      if (FFAppState()
                                                                  .SignUpErrorMsg !=
                                                              null &&
                                                          FFAppState()
                                                                  .SignUpErrorMsg !=
                                                              '')
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Text(
                                                                FFAppState()
                                                                    .SignUpErrorMsg,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Color(
                                                                          0xFFFF0000),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: FFButtonWidget(
                                                        onPressed: ((FFAppState().nameErrorMsg != null && FFAppState().nameErrorMsg != '') ||
                                                                (FFAppState().lastnameErrorMsg != null &&
                                                                    FFAppState().lastnameErrorMsg !=
                                                                        '') ||
                                                                (FFAppState().nationalAddressErrorMsg != null &&
                                                                    FFAppState().nationalAddressErrorMsg !=
                                                                        '') ||
                                                                (FFAppState().phoneErrorMsg != null &&
                                                                    FFAppState().phoneErrorMsg !=
                                                                        '') ||
                                                                (FFAppState().emailErrorMsg2 != null &&
                                                                    FFAppState().emailErrorMsg2 !=
                                                                        '') ||
                                                                (FFAppState().passwordErrorMsg2 != null &&
                                                                    FFAppState().passwordErrorMsg2 !=
                                                                        '') ||
                                                                (FFAppState().passwordErrorMsg3 != null &&
                                                                    FFAppState().passwordErrorMsg3 !=
                                                                        '') ||
                                                                (_model.firstNameTextController.text == null ||
                                                                    _model.firstNameTextController.text ==
                                                                        '') ||
                                                                (_model.lastNameTextController.text == null ||
                                                                    _model.lastNameTextController.text ==
                                                                        '') ||
                                                                (_model.nationalAddressTextController.text == null ||
                                                                    _model.nationalAddressTextController.text ==
                                                                        '') ||
                                                                (_model.phoneNumberTextController.text == null ||
                                                                    _model.phoneNumberTextController.text ==
                                                                        '') ||
                                                                (_model.emailAddressCreateTextController.text ==
                                                                        null ||
                                                                    _model.emailAddressCreateTextController.text ==
                                                                        '') ||
                                                                (_model.passwordCreateTextController.text ==
                                                                        null ||
                                                                    _model.passwordCreateTextController.text ==
                                                                        '') ||
                                                                (_model.passwordConfirmTextController.text ==
                                                                        null ||
                                                                    _model.passwordConfirmTextController.text == ''))
                                                            ? null
                                                            : () async {
                                                                _model.returnAuth =
                                                                    await actions
                                                                        .customAuthSignUp(
                                                                  _model
                                                                      .emailAddressCreateTextController
                                                                      .text,
                                                                  _model
                                                                      .passwordCreateTextController
                                                                      .text,
                                                                  _model
                                                                      .firstNameTextController
                                                                      .text,
                                                                  _model
                                                                      .lastNameTextController
                                                                      .text,
                                                                  _model
                                                                      .nationalAddressTextController
                                                                      .text,
                                                                  _model
                                                                      .nannyCheckboxValue!,
                                                                  _model
                                                                      .expertCheckboxValue!,
                                                                  _model
                                                                      .phoneNumberTextController
                                                                      .text,
                                                                  'Invalid email format.',
                                                                  'Weak Password.',
                                                                  'The email address entered is already in use. Please try another email.',
                                                                  'The phone number entered is already in use. Please try another phone number.',
                                                                );
                                                                if (_model
                                                                        .returnAuth ==
                                                                    'valid') {
                                                                  FFAppState()
                                                                      .SignUpErrorMsg = '';
                                                                  safeSetState(
                                                                      () {});
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap: () =>
                                                                              FocusScope.of(dialogContext).unfocus(),
                                                                          child:
                                                                              AccountCreatedWidget(),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                } else {
                                                                  FFAppState()
                                                                      .emailErrorMsg2 = _model
                                                                              .returnAuth ==
                                                                          'The email address entered is already in use. Please try another email.'
                                                                      ? 'The email address entered is already in use. Please try another email.'
                                                                      : FFAppState()
                                                                          .emailErrorMsg2;
                                                                  FFAppState()
                                                                      .phoneErrorMsg = _model
                                                                              .returnAuth ==
                                                                          'The phone number entered is already in use. Please try another phone number.'
                                                                      ? 'The phone number entered is already in use. Please try another phone number.'
                                                                      : FFAppState()
                                                                          .phoneErrorMsg;
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                      .SignUpErrorMsg = (_model.returnAuth ==
                                                                              'The phone number entered is already in use. Please try another phone number.') ||
                                                                          (_model.returnAuth ==
                                                                              'The email address entered is already in use. Please try another email.')
                                                                      ? null!
                                                                      : _model
                                                                          .returnAuth!;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                        text: 'Create Account',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 230.0,
                                                          height: 50.0,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFF129C52),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          disabledColor:
                                                              Color(0x40129C52),
                                                          disabledTextColor:
                                                              Color(0x85FFFFFF),
                                                        ),
                                                      ),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Container(
                    width: 100.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
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
