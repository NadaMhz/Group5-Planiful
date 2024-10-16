import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/complete_profile/formsuccess/formsuccess_widget.dart';
import '/complete_profile/profile_completesuccess/profile_completesuccess_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'complete_profile3_model.dart';
export 'complete_profile3_model.dart';

class CompleteProfile3Widget extends StatefulWidget {
  const CompleteProfile3Widget({super.key});

  @override
  State<CompleteProfile3Widget> createState() => _CompleteProfile3WidgetState();
}

class _CompleteProfile3WidgetState extends State<CompleteProfile3Widget> {
  late CompleteProfile3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfile3Model());

    _model.experienceTextController ??= TextEditingController();
    _model.experienceFocusNode ??= FocusNode();

    _model.paymentRateTextController1 ??= TextEditingController();
    _model.paymentRateFocusNode1 ??= FocusNode();

    _model.paymentRateTextController2 ??= TextEditingController();
    _model.paymentRateFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<UserDetailsRecord>(
      stream: UserDetailsRecord.getDocument(currentUserReference!),
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

        final completeProfile3UserDetailsRecord = snapshot.data!;

        return Scaffold(
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if ((FFAppState().completedpf1 == true) ||
                          ((FFAppState().completedpf1 == true) &&
                              (completeProfile3UserDetailsRecord.photoUrl !=
                                      null &&
                                  completeProfile3UserDetailsRecord.photoUrl !=
                                      '')))
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.28),
                            child: LinearPercentIndicator(
                              percent: 1.0,
                              lineHeight: 10.0,
                              animation: false,
                              animateFromLastPercent: true,
                              progressColor: Color(0xFF129C52),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              barRadius: Radius.circular(24.0),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      if ((FFAppState().completedpf2 == true) ||
                          ((FFAppState().completedpf2 == true) &&
                              (completeProfile3UserDetailsRecord.gender !=
                                      null &&
                                  completeProfile3UserDetailsRecord.gender !=
                                      '')))
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.28),
                            child: LinearPercentIndicator(
                              percent: 1.0,
                              lineHeight: 10.0,
                              animation: false,
                              animateFromLastPercent: true,
                              progressColor: Color(0xFF129C52),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              barRadius: Radius.circular(24.0),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
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
                    ],
                  ),
                ),
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 60.0, 24.0),
                          child: Text(
                            'Fill out your application',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 16.0),
                            child: Text(
                              valueOrDefault<String>(
                                functions.expertNannyFormText(
                                    completeProfile3UserDetailsRecord
                                        .isPlantNanny,
                                    completeProfile3UserDetailsRecord
                                        .isPlantExpert),
                                'Fill out the form below so we can review your application!',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 6.0, 12.0, 0.0),
                          child: TextFormField(
                            controller: _model.experienceTextController,
                            focusNode: _model.experienceFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.experienceTextController',
                              Duration(milliseconds: 100),
                              () async {
                                if (functions.validateExperience(_model
                                            .experienceTextController.text) !=
                                        null &&
                                    functions.validateExperience(_model
                                            .experienceTextController.text) !=
                                        '') {
                                  FFAppState().eperienceErrorMsg =
                                      functions.validateExperience(_model
                                          .experienceTextController.text)!;
                                  safeSetState(() {});
                                } else {
                                  FFAppState().eperienceErrorMsg = '';
                                  safeSetState(() {});
                                }
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Experience',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FFAppState().eperienceErrorMsg !=
                                                null &&
                                            FFAppState().eperienceErrorMsg != ''
                                        ? Color(0xFFFF0000)
                                        : Color(0xFF57636C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              alignLabelWithHint: true,
                              hintText:
                                  ' Describe your plant care experience (e.g., number of years, types of plants cared for).',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FFAppState().eperienceErrorMsg !=
                                              null &&
                                          FFAppState().eperienceErrorMsg != ''
                                      ? Color(0xFFFF0000)
                                      : Color(0xFFE0E3E7),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FFAppState().eperienceErrorMsg !=
                                              null &&
                                          FFAppState().eperienceErrorMsg != ''
                                      ? Color(0xFFFF0000)
                                      : Color(0xFF129C52),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding: EdgeInsets.all(24.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 4,
                            maxLength: 500,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            cursorColor: Color(0xFF129C52),
                            validator: _model.experienceTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        if (FFAppState().eperienceErrorMsg != null &&
                            FFAppState().eperienceErrorMsg != '')
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  31.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFAppState().eperienceErrorMsg,
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
                              12.0, 16.0, 12.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            multiSelectController:
                                _model.dropDownValueController ??=
                                    FormListFieldController<String>(null),
                            options: [
                              'Outdoor plants and Garden care',
                              'Indoor Plants',
                              'General Plant Care',
                              'Succulent and Cactus Care',
                              'Orchid & Flowering Plants Care',
                              'Herb Garden Care',
                              'Vegetable Garden Care',
                              'Tropical Plants Care',
                              'Fertilization & Soil Expertise',
                              'Pest Control & Disease Prevention',
                              'Hydroponics',
                              'Pruning & Plant Shaping',
                              'Organic Plant Care',
                              'Plant Propagation',
                              'Plant Lighting & Growth Optimization',
                              'Seasonal Care (Winter/Summer)',
                              'Specialty Plants Care (Bonsai, Orchids, etc.)'
                            ],
                            width: 332.0,
                            height: 55.0,
                            maxHeight: 240.0,
                            searchHintTextStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                            searchTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                            textStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Select your area of expertise',
                            searchHintText: 'Search...',
                            searchCursorColor: Color(0xFF129C52),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 15.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE0E3E7),
                            borderWidth: 2.0,
                            borderRadius: 22.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 17.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: true,
                            isMultiSelect: true,
                            onMultiSelectChanged: (val) =>
                                safeSetState(() => _model.dropDownValue = val),
                          ),
                        ),
                        if (completeProfile3UserDetailsRecord.isPlantNanny ==
                            true)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 10.0, 12.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller: _model
                                                .paymentRateTextController1,
                                            focusNode:
                                                _model.paymentRateFocusNode1,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.paymentRateTextController1',
                                              Duration(milliseconds: 100),
                                              () async {
                                                if (functions.validateRate(
                                                            int.tryParse(_model
                                                                .paymentRateTextController1
                                                                .text)) !=
                                                        null &&
                                                    functions.validateRate(
                                                            int.tryParse(_model
                                                                .paymentRateTextController1
                                                                .text)) !=
                                                        '') {
                                                  FFAppState().rateErrorMsg =
                                                      functions.validateRate(
                                                          int.tryParse(_model
                                                              .paymentRateTextController1
                                                              .text))!;
                                                  safeSetState(() {});
                                                } else {
                                                  FFAppState().rateErrorMsg =
                                                      '';
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Daily Rate',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: FFAppState()
                                                                        .rateErrorMsg !=
                                                                    null &&
                                                                FFAppState()
                                                                        .rateErrorMsg !=
                                                                    ''
                                                            ? Color(0xFFFF0000)
                                                            : Color(0xFF57636C),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText:
                                                  'Enter your daily payment rate as a Nanny.',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FFAppState()
                                                                  .rateErrorMsg !=
                                                              null &&
                                                          FFAppState()
                                                                  .rateErrorMsg !=
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
                                                                  .rateErrorMsg !=
                                                              null &&
                                                          FFAppState()
                                                                  .rateErrorMsg !=
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
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
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: null,
                                            maxLength: 4,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            keyboardType: TextInputType.number,
                                            cursorColor: Color(0xFF129C52),
                                            validator: _model
                                                .paymentRateTextController1Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(
                                                  RegExp('[0-9]'))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 28.0, 25.0, 16.0),
                                        child: Text(
                                          'SAR',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().rateErrorMsg != null &&
                                  FFAppState().rateErrorMsg != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        31.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().rateErrorMsg,
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
                            ],
                          ),
                        if (completeProfile3UserDetailsRecord.isPlantExpert ==
                            true)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 16.0, 12.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller: _model
                                                .paymentRateTextController2,
                                            focusNode:
                                                _model.paymentRateFocusNode2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.paymentRateTextController2',
                                              Duration(milliseconds: 100),
                                              () async {
                                                if (functions.validateRate(
                                                            int.tryParse(_model
                                                                .paymentRateTextController2
                                                                .text)) !=
                                                        null &&
                                                    functions.validateRate(
                                                            int.tryParse(_model
                                                                .paymentRateTextController2
                                                                .text)) !=
                                                        '') {
                                                  FFAppState().rateErrorMsg2 =
                                                      functions.validateRate(
                                                          int.tryParse(_model
                                                              .paymentRateTextController2
                                                              .text))!;
                                                  safeSetState(() {});
                                                } else {
                                                  FFAppState().rateErrorMsg2 =
                                                      '';
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Hourly Rate',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: FFAppState()
                                                                        .rateErrorMsg2 !=
                                                                    null &&
                                                                FFAppState()
                                                                        .rateErrorMsg2 !=
                                                                    ''
                                                            ? Color(0xFFFF0000)
                                                            : Color(0xFF57636C),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText:
                                                  'Enter your hourly payment rate as an Expert.',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FFAppState()
                                                                  .rateErrorMsg2 !=
                                                              null &&
                                                          FFAppState()
                                                                  .rateErrorMsg2 !=
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
                                                                  .rateErrorMsg2 !=
                                                              null &&
                                                          FFAppState()
                                                                  .rateErrorMsg2 !=
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
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
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: null,
                                            maxLength: 4,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            keyboardType: TextInputType.number,
                                            cursorColor: Color(0xFF129C52),
                                            validator: _model
                                                .paymentRateTextController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(
                                                  RegExp('[0-9]'))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 35.0, 25.0, 16.0),
                                        child: Text(
                                          'SAR',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().rateErrorMsg2 != null &&
                                  FFAppState().rateErrorMsg2 != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        31.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().rateErrorMsg2,
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
                            ],
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 16.0, 12.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: FFAppState().cvErrMsg !=
                                                      null &&
                                                  FFAppState().cvErrMsg != ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFAppState().fileName != null &&
                                                      FFAppState().fileName !=
                                                          ''
                                                  ? FFAppState().fileName
                                                  : 'Upload a PDF of your CV',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: () {
                                                          if ((FFAppState()
                                                                          .cvErrMsg ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .cvErrMsg ==
                                                                      '') &&
                                                              (FFAppState()
                                                                          .fileName !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .fileName !=
                                                                      '')) {
                                                            return Color(
                                                                0xFF129C52);
                                                          } else if (FFAppState()
                                                                      .cvErrMsg !=
                                                                  null &&
                                                              FFAppState()
                                                                      .cvErrMsg !=
                                                                  '') {
                                                            return Color(
                                                                0xFFFF0000);
                                                          } else if ((FFAppState()
                                                                          .cvErrMsg ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .cvErrMsg ==
                                                                      '') &&
                                                              (FFAppState()
                                                                          .fileName ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .fileName ==
                                                                      '')) {
                                                            return Color(
                                                                0xFF57636C);
                                                          } else {
                                                            return Color(
                                                                0xFF57636C);
                                                          }
                                                        }(),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              if (FFAppState().fileName ==
                                                      null ||
                                                  FFAppState().fileName == '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 7.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 13.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 40.0,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    icon: Icon(
                                                      Icons.file_upload_rounded,
                                                      color: Color(0xC057636C),
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      _model.fileData =
                                                          await actions
                                                              .documentPicker();
                                                      if (functions.validateFileName(
                                                                  FFAppState()
                                                                      .fileName) !=
                                                              null &&
                                                          functions.validateFileName(
                                                                  FFAppState()
                                                                      .fileName) !=
                                                              '') {
                                                        FFAppState().cvErrMsg =
                                                            functions
                                                                .validateFileName(
                                                                    FFAppState()
                                                                        .fileName)!;
                                                        safeSetState(() {});
                                                      } else {
                                                        FFAppState().cvErrMsg =
                                                            '';
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              if (FFAppState().fileName !=
                                                      null &&
                                                  FFAppState().fileName != '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 7.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 13.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 40.0,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    icon: Icon(
                                                      Icons.cancel,
                                                      color: FFAppState()
                                                                      .cvErrMsg ==
                                                                  null ||
                                                              FFAppState()
                                                                      .cvErrMsg ==
                                                                  ''
                                                          ? Color(0xFF129C52)
                                                          : Color(0xFFFF0000),
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState().fileName =
                                                          '';
                                                      FFAppState().cvErrMsg =
                                                          '';
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (FFAppState().cvErrMsg != null &&
                                FFAppState().cvErrMsg != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().cvErrMsg,
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
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 16.0, 12.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: FFAppState()
                                                          .certificateErrMsg !=
                                                      null &&
                                                  FFAppState()
                                                          .certificateErrMsg !=
                                                      ''
                                              ? Color(0xFFFF0000)
                                              : Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFAppState().secondFileName !=
                                                          null &&
                                                      FFAppState()
                                                              .secondFileName !=
                                                          ''
                                                  ? FFAppState().secondFileName
                                                  : 'Upload a PDF of your certificate',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: () {
                                                          if ((FFAppState()
                                                                          .certificateErrMsg ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .certificateErrMsg ==
                                                                      '') &&
                                                              (FFAppState()
                                                                          .secondFileName !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .secondFileName !=
                                                                      '')) {
                                                            return Color(
                                                                0xFF129C52);
                                                          } else if (FFAppState()
                                                                      .certificateErrMsg !=
                                                                  null &&
                                                              FFAppState()
                                                                      .certificateErrMsg !=
                                                                  '') {
                                                            return Color(
                                                                0xFFFF0000);
                                                          } else if ((FFAppState()
                                                                          .certificateErrMsg ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .certificateErrMsg ==
                                                                      '') &&
                                                              (FFAppState()
                                                                          .secondFileName ==
                                                                      null ||
                                                                  FFAppState()
                                                                          .secondFileName ==
                                                                      '')) {
                                                            return Color(
                                                                0xFF57636C);
                                                          } else {
                                                            return Color(
                                                                0xFF57636C);
                                                          }
                                                        }(),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              if (FFAppState().secondFileName ==
                                                      null ||
                                                  FFAppState().secondFileName ==
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 7.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 13.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 40.0,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    icon: Icon(
                                                      Icons.file_upload_rounded,
                                                      color: Color(0xC057636C),
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      _model.filiedata2 =
                                                          await actions
                                                              .documentPickerCopy();
                                                      if (functions.validateFileName(
                                                                  FFAppState()
                                                                      .secondFileName) !=
                                                              null &&
                                                          functions.validateFileName(
                                                                  FFAppState()
                                                                      .secondFileName) !=
                                                              '') {
                                                        FFAppState()
                                                                .certificateErrMsg =
                                                            functions
                                                                .validateFileName(
                                                                    FFAppState()
                                                                        .secondFileName)!;
                                                        safeSetState(() {});
                                                      } else {
                                                        FFAppState()
                                                            .certificateErrMsg = '';
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              if (FFAppState().secondFileName !=
                                                      null &&
                                                  FFAppState().secondFileName !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 7.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 13.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 40.0,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    icon: Icon(
                                                      Icons.cancel,
                                                      color: FFAppState()
                                                                      .certificateErrMsg ==
                                                                  null ||
                                                              FFAppState()
                                                                      .certificateErrMsg ==
                                                                  ''
                                                          ? Color(0xFF129C52)
                                                          : Color(0xFFFF0000),
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .secondFileName = '';
                                                      FFAppState()
                                                          .certificateErrMsg = '';
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (FFAppState().secondFileName != null &&
                                FFAppState().secondFileName != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      31.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().certificateErrMsg,
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
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Builder(
                            builder: (context) => Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 60.0),
                              child: FFButtonWidget(
                                onPressed: (((_model.dropDownValue != null &&
                                                (_model.dropDownValue)!
                                                    .isNotEmpty) ==
                                            false) ||
                                        (FFAppState().rateErrorMsg != null &&
                                            FFAppState().rateErrorMsg != '') ||
                                        (FFAppState().rateErrorMsg2 != null &&
                                            FFAppState().rateErrorMsg2 != '') ||
                                        (FFAppState().eperienceErrorMsg !=
                                                null &&
                                            FFAppState().eperienceErrorMsg !=
                                                '') ||
                                        (FFAppState().fileName == null ||
                                            FFAppState().fileName == '') ||
                                        (FFAppState().secondFileName == null ||
                                            FFAppState().secondFileName ==
                                                '') ||
                                        (FFAppState().cvErrMsg != null &&
                                            FFAppState().cvErrMsg != '') ||
                                        (FFAppState().certificateErrMsg !=
                                                null &&
                                            FFAppState().certificateErrMsg !=
                                                ''))
                                    ? null
                                    : () async {
                                        await RoleApplicationRecord.createDoc(
                                                completeProfile3UserDetailsRecord
                                                    .reference)
                                            .set({
                                          ...createRoleApplicationRecordData(
                                            experience: _model
                                                .experienceTextController.text,
                                            nannyRate: int.tryParse(_model
                                                .paymentRateTextController1
                                                .text),
                                            expertRate: int.tryParse(_model
                                                .paymentRateTextController2
                                                .text),
                                            timeCreated: getCurrentTimestamp,
                                            applicationStatusExpert:
                                                completeProfile3UserDetailsRecord
                                                        .isPlantExpert
                                                    ? 'Under Review'
                                                    : 'Disabled',
                                            applicationStatusNanny:
                                                completeProfile3UserDetailsRecord
                                                        .isPlantNanny
                                                    ? 'Under Review'
                                                    : 'Disabled',
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'expertise': _model.dropDownValue,
                                            },
                                          ),
                                        });
                                        if ((completeProfile3UserDetailsRecord
                                                        .gender ==
                                                    null ||
                                                completeProfile3UserDetailsRecord
                                                        .gender ==
                                                    '') ||
                                            (completeProfile3UserDetailsRecord
                                                        .photoUrl ==
                                                    null ||
                                                completeProfile3UserDetailsRecord
                                                        .photoUrl ==
                                                    '')) {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: FormsuccessWidget(),
                                              );
                                            },
                                          );
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child:
                                                    ProfileCompletesuccessWidget(),
                                              );
                                            },
                                          );
                                        }
                                      },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  width: 230.0,
                                  height: 50.0,
                                  padding: EdgeInsets.all(5.0),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
