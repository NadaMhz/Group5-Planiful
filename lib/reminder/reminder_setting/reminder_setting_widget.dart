import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reminder/fertilizingtip/fertilizingtip_widget.dart';
import '/reminder/rotatingtip/rotatingtip_widget.dart';
import '/reminder/watertip/watertip_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reminder_setting_model.dart';
export 'reminder_setting_model.dart';

class ReminderSettingWidget extends StatefulWidget {
  const ReminderSettingWidget({
    super.key,
    required this.editReminder,
  });

  final MyPlantsRecord? editReminder;

  @override
  State<ReminderSettingWidget> createState() => _ReminderSettingWidgetState();
}

class _ReminderSettingWidgetState extends State<ReminderSettingWidget> {
  late ReminderSettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReminderSettingModel());

    _model.switch1Value = widget!.editReminder!.hasWateringReminder;
    _model.switch2Value = widget!.editReminder!.hasRotatingReminder;
    _model.switch3Value = widget!.editReminder!.hasfertilizingReminder;
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF129C52),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
              child: Text(
                'Notify Me About',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: Image.network(
                                        widget!.editReminder!.plantImage,
                                        width: 300.0,
                                        height: 267.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    functions.commonNameExtract(
                                        widget!.editReminder?.namee),
                                    'Plant Name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 55.0,
                                        height: 55.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/d_(9).png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Watering',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  if ((_model.dropDownValue1 ==
                                                              null ||
                                                          _model.dropDownValue1 ==
                                                              '') &&
                                                      (_model.dropDownValue2 ==
                                                              null ||
                                                          _model.dropDownValue2 ==
                                                              '') &&
                                                      (_model.switch1Value ==
                                                          true) &&
                                                      (dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked1,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              null ||
                                                          dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked1,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              ''))
                                                    Text(
                                                      widget!.editReminder!
                                                          .waterReminder,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  if ((_model.dropDownValue1 !=
                                                              null &&
                                                          _model.dropDownValue1 !=
                                                              '') &&
                                                      (_model.dropDownValue2 !=
                                                              null &&
                                                          _model.dropDownValue2 !=
                                                              '') &&
                                                      (_model.switch1Value ==
                                                          true) &&
                                                      ((widget!.editReminder
                                                                      ?.rtime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.rtime !=
                                                                  '') ||
                                                          (dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked1,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  null &&
                                                              dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked1,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  '')))
                                                    Text(
                                                      functions.concatSchedule(
                                                          widget!.editReminder
                                                                          ?.wtime !=
                                                                      null &&
                                                                  widget!.editReminder
                                                                          ?.wtime !=
                                                                      ''
                                                              ? widget!
                                                                  .editReminder
                                                                  ?.wtime
                                                              : dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                          _model.dropDownValue1,
                                                          _model
                                                              .dropDownValue2)!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Switch.adaptive(
                                          value: _model.switch1Value!,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .switch1Value = newValue!);
                                          },
                                          activeColor: Colors.white,
                                          activeTrackColor: Color(0xFF2D7BBB),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveThumbColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_model.switch1Value == true)
                          Container(
                            width: double.infinity,
                            height: 210.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF37AEF4),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Watering Tip',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Color(
                                                            0xFFFFFFFFFFFFF),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                icon: Icon(
                                                  Icons.info,
                                                  color: Color(0xFFFFFFFFFFF),
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  FFAppState().wtip = widget!
                                                      .editReminder!.watering;
                                                  safeSetState(() {});
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              WatertipWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x63CDCDCD),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Repeat every',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController1 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue1 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.wnumber,
                                                          ),
                                                          options: [
                                                            '  1',
                                                            '  2',
                                                            '  3',
                                                            '  4',
                                                            '  5'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue1 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'number',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      22.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController2 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue2 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.witreation,
                                                          ),
                                                          options: [
                                                            'day',
                                                            'week',
                                                            'month',
                                                            'minute'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue2 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'd/w/m',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Time:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            if (dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked1,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    null ||
                                                                dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked1,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    '')
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Text(
                                                                  widget!.editReminder?.wtime ==
                                                                              null ||
                                                                          widget!.editReminder?.wtime ==
                                                                              ''
                                                                      ? 'HH:MM'
                                                                      : widget!
                                                                          .editReminder!
                                                                          .wtime,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 8.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.timer_sharp,
                                                              color: Color(
                                                                  0xFF129C52),
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              final _datePicked1Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                              if (_datePicked1Time !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked1 =
                                                                      DateTime(
                                                                    getCurrentTimestamp
                                                                        .year,
                                                                    getCurrentTimestamp
                                                                        .month,
                                                                    getCurrentTimestamp
                                                                        .day,
                                                                    _datePicked1Time
                                                                        .hour,
                                                                    _datePicked1Time
                                                                        .minute,
                                                                  );
                                                                });
                                                              }
                                                            },
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 55.0,
                                        height: 55.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/d_(7).png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Rotating',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  if ((_model.dropDownValue3 ==
                                                              null ||
                                                          _model.dropDownValue3 ==
                                                              '') &&
                                                      (_model.dropDownValue4 ==
                                                              null ||
                                                          _model.dropDownValue4 ==
                                                              '') &&
                                                      (_model.switch2Value ==
                                                          true) &&
                                                      (dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked2,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              null ||
                                                          dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked2,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              ''))
                                                    Text(
                                                      widget!.editReminder!
                                                          .rotatinReminder,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  if ((_model.dropDownValue3 !=
                                                              null &&
                                                          _model.dropDownValue3 !=
                                                              '') &&
                                                      (_model.dropDownValue4 !=
                                                              null &&
                                                          _model.dropDownValue4 !=
                                                              '') &&
                                                      (_model.switch2Value ==
                                                          true) &&
                                                      ((widget!.editReminder
                                                                      ?.rtime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.rtime !=
                                                                  '') ||
                                                          (dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked2,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  null &&
                                                              dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked2,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  '')))
                                                    Text(
                                                      functions.concatSchedule(
                                                          widget!.editReminder
                                                                          ?.rtime !=
                                                                      null &&
                                                                  widget!.editReminder
                                                                          ?.rtime !=
                                                                      ''
                                                              ? widget!
                                                                  .editReminder
                                                                  ?.rtime
                                                              : dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked2,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                          _model.dropDownValue3,
                                                          _model
                                                              .dropDownValue4)!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Switch.adaptive(
                                          value: _model.switch2Value!,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .switch2Value = newValue!);
                                          },
                                          activeColor: Colors.white,
                                          activeTrackColor: Color(0xFFFFBD59),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveThumbColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_model.switch2Value == true)
                          Container(
                            width: double.infinity,
                            height: 210.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFBD59),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Rotating Tip',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Color(
                                                            0xFFFFFFFFFFFFF),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                icon: Icon(
                                                  Icons.info,
                                                  color: Color(0xFFFFFFFFFFF),
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  FFAppState().rtip = widget!
                                                      .editReminder!.rotating;
                                                  safeSetState(() {});
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              RotatingtipWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x63CDCDCD),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Repeat every',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController3 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue3 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.rnumber,
                                                          ),
                                                          options: [
                                                            '  1',
                                                            '  2',
                                                            '  3',
                                                            '  4',
                                                            '  5'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue3 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'number',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      22.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController4 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue4 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.ritreation,
                                                          ),
                                                          options: [
                                                            'day',
                                                            'week',
                                                            'month'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue4 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'd/w/m',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Time:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked2,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            if (dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked2,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    null ||
                                                                dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked2,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    '')
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Text(
                                                                  widget!.editReminder?.rtime ==
                                                                              null ||
                                                                          widget!.editReminder?.rtime ==
                                                                              ''
                                                                      ? 'HH:MM'
                                                                      : widget!
                                                                          .editReminder!
                                                                          .rtime,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 8.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.timer_sharp,
                                                              color: Color(
                                                                  0xFF129C52),
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              final _datePicked2Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                              if (_datePicked2Time !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked2 =
                                                                      DateTime(
                                                                    getCurrentTimestamp
                                                                        .year,
                                                                    getCurrentTimestamp
                                                                        .month,
                                                                    getCurrentTimestamp
                                                                        .day,
                                                                    _datePicked2Time
                                                                        .hour,
                                                                    _datePicked2Time
                                                                        .minute,
                                                                  );
                                                                });
                                                              }
                                                            },
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 55.0,
                                        height: 55.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/d_(12).png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Fertilizing',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  if ((_model.dropDownValue5 ==
                                                              null ||
                                                          _model.dropDownValue5 ==
                                                              '') &&
                                                      (_model.dropDownValue6 ==
                                                              null ||
                                                          _model.dropDownValue6 ==
                                                              '') &&
                                                      (_model.switch3Value ==
                                                          true) &&
                                                      (dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked3,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              null ||
                                                          dateTimeFormat(
                                                                "jm",
                                                                _model
                                                                    .datePicked3,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              ''))
                                                    Text(
                                                      widget!.editReminder!
                                                          .fertilizingReminder,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  if ((_model.dropDownValue5 !=
                                                              null &&
                                                          _model.dropDownValue5 !=
                                                              '') &&
                                                      (_model.dropDownValue6 !=
                                                              null &&
                                                          _model.dropDownValue6 !=
                                                              '') &&
                                                      (_model.switch3Value ==
                                                          true) &&
                                                      ((widget!.editReminder
                                                                      ?.ftime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.ftime !=
                                                                  '') ||
                                                          (dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked3,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  null &&
                                                              dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked3,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ) !=
                                                                  '')))
                                                    Text(
                                                      functions.concatSchedule(
                                                          widget!.editReminder
                                                                          ?.ftime !=
                                                                      null &&
                                                                  widget!.editReminder
                                                                          ?.ftime !=
                                                                      ''
                                                              ? widget!
                                                                  .editReminder
                                                                  ?.ftime
                                                              : dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked3,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                          _model.dropDownValue5,
                                                          _model
                                                              .dropDownValue6)!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Switch.adaptive(
                                          value: _model.switch3Value!,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .switch3Value = newValue!);
                                          },
                                          activeColor: Colors.white,
                                          activeTrackColor: Color(0xFF34CA84),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveThumbColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_model.switch3Value == true)
                          Container(
                            width: double.infinity,
                            height: 210.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF34CA84),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Fertilizing Tip',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Color(
                                                            0xFFFFFFFFFFFFF),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                icon: Icon(
                                                  Icons.info,
                                                  color: Color(0xFFFFFFFFFFF),
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  FFAppState().ftip = widget!
                                                      .editReminder!.soil;
                                                  safeSetState(() {});
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              FertilizingtipWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x63CDCDCD),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Repeat every',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController5 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue5 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.fnumber,
                                                          ),
                                                          options: [
                                                            '  1',
                                                            '  2',
                                                            '  3',
                                                            '  4',
                                                            '  5'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue5 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'number',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      22.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController6 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue6 ??=
                                                                widget!
                                                                    .editReminder
                                                                    ?.fitreation,
                                                          ),
                                                          options: [
                                                            'day',
                                                            'week',
                                                            'month'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue6 =
                                                                      val),
                                                          width: 100.0,
                                                          height: 40.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText: 'd/w/m',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Time:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked3,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            if (dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked3,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    null ||
                                                                dateTimeFormat(
                                                                      "jm",
                                                                      _model
                                                                          .datePicked3,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ) ==
                                                                    '')
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Text(
                                                                  widget!.editReminder?.ftime ==
                                                                              null ||
                                                                          widget!.editReminder?.ftime ==
                                                                              ''
                                                                      ? 'HH:MM'
                                                                      : widget!
                                                                          .editReminder!
                                                                          .ftime,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 8.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.timer_sharp,
                                                              color: Color(
                                                                  0xFF129C52),
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              final _datePicked3Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                              if (_datePicked3Time !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked3 =
                                                                      DateTime(
                                                                    getCurrentTimestamp
                                                                        .year,
                                                                    getCurrentTimestamp
                                                                        .month,
                                                                    getCurrentTimestamp
                                                                        .day,
                                                                    _datePicked3Time
                                                                        .hour,
                                                                    _datePicked3Time
                                                                        .minute,
                                                                  );
                                                                });
                                                              }
                                                            },
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 180.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: 395.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: functions
                                                  .checkReminderConditions(
                                                      _model.switch1Value,
                                                      _model.dropDownValue1,
                                                      _model.dropDownValue2,
                                                      _model.switch2Value,
                                                      _model.dropDownValue3,
                                                      _model.dropDownValue4,
                                                      _model.switch3Value,
                                                      _model.dropDownValue5,
                                                      _model.dropDownValue6,
                                                      widget!.editReminder
                                                                      ?.ftime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.ftime !=
                                                                  ''
                                                          ? widget!.editReminder
                                                              ?.ftime
                                                          : dateTimeFormat(
                                                              "jm",
                                                              _model
                                                                  .datePicked3,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      widget!.editReminder
                                                                      ?.wtime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.wtime !=
                                                                  ''
                                                          ? widget!.editReminder
                                                              ?.wtime
                                                          : dateTimeFormat(
                                                              "jm",
                                                              _model
                                                                  .datePicked1,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                      widget!.editReminder
                                                                      ?.rtime !=
                                                                  null &&
                                                              widget!.editReminder
                                                                      ?.rtime !=
                                                                  ''
                                                          ? widget!.editReminder
                                                              ?.rtime
                                                          : dateTimeFormat(
                                                              "jm",
                                                              _model
                                                                  .datePicked2,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ))!
                                              ? null
                                              : () async {
                                                  await widget!
                                                      .editReminder!.reference
                                                      .update(
                                                          createMyPlantsRecordData(
                                                    hasWateringReminder:
                                                        _model.switch1Value,
                                                    hasRotatingReminder:
                                                        _model.switch2Value,
                                                    hasfertilizingReminder:
                                                        _model.switch3Value,
                                                    waterReminder: functions
                                                        .concatSchedule(
                                                            widget!.editReminder
                                                                            ?.wtime !=
                                                                        null &&
                                                                    widget!.editReminder
                                                                            ?.wtime !=
                                                                        ''
                                                                ? widget!
                                                                    .editReminder
                                                                    ?.wtime
                                                                : dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked1,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                            _model
                                                                .dropDownValue1,
                                                            _model
                                                                .dropDownValue2),
                                                    rotatinReminder: functions
                                                        .concatSchedule(
                                                            widget!.editReminder
                                                                            ?.rtime !=
                                                                        null &&
                                                                    widget!.editReminder
                                                                            ?.rtime !=
                                                                        ''
                                                                ? widget!
                                                                    .editReminder
                                                                    ?.rtime
                                                                : dateTimeFormat(
                                                                    "jm",
                                                                    _model
                                                                        .datePicked2,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                            _model
                                                                .dropDownValue3,
                                                            _model
                                                                .dropDownValue4),
                                                    fertilizingReminder:
                                                        functions.concatSchedule(
                                                            widget!.editReminder
                                                                ?.ftime,
                                                            _model
                                                                .dropDownValue5,
                                                            _model
                                                                .dropDownValue6),
                                                    wnumber:
                                                        _model.dropDownValue1,
                                                    witreation:
                                                        _model.dropDownValue2,
                                                    rnumber:
                                                        _model.dropDownValue3,
                                                    ritreation:
                                                        _model.dropDownValue4,
                                                    fnumber:
                                                        _model.dropDownValue5,
                                                    fitreation:
                                                        _model.dropDownValue6,
                                                    ftime: dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked3,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                null ||
                                                            dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked3,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                ''
                                                        ? widget!
                                                            .editReminder?.ftime
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model.datePicked3,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                    wtime: dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                null ||
                                                            dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                ''
                                                        ? widget!
                                                            .editReminder?.wtime
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model.datePicked1,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                    rtime: dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked2,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                null ||
                                                            dateTimeFormat(
                                                                  "jm",
                                                                  _model
                                                                      .datePicked2,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ) ==
                                                                ''
                                                        ? widget!
                                                            .editReminder?.rtime
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model.datePicked2,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                  ));
                                                  await actions
                                                      .requestNotificationPermission();
                                                  if (_model.switch1Value!) {
                                                    await actions
                                                        .schedulenotificationsCopy(
                                                      _model.datePicked1,
                                                      _model.dropDownValue1,
                                                      _model.dropDownValue2,
                                                      valueOrDefault<String>(
                                                        widget!.editReminder
                                                            ?.displayedPlantName,
                                                        'it',
                                                      ),
                                                      'watering',
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      10,
                                                    );
                                                  } else {
                                                    await actions
                                                        .cancelNotifications(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      10,
                                                    );
                                                    await actions
                                                        .deleteNotificationDetails(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      10,
                                                    );
                                                  }

                                                  if (_model.switch2Value!) {
                                                    await actions
                                                        .schedulenotificationsCopy(
                                                      _model.datePicked2,
                                                      _model.dropDownValue3,
                                                      _model.dropDownValue4,
                                                      valueOrDefault<String>(
                                                        widget!.editReminder
                                                            ?.displayedPlantName,
                                                        'it',
                                                      ),
                                                      'rotating',
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      30,
                                                    );
                                                  } else {
                                                    await actions
                                                        .cancelNotifications(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      30,
                                                    );
                                                    await actions
                                                        .deleteNotificationDetails(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      30,
                                                    );
                                                  }

                                                  if (_model.switch3Value!) {
                                                    await actions
                                                        .schedulenotificationsCopy(
                                                      _model.datePicked3,
                                                      _model.dropDownValue5,
                                                      _model.dropDownValue6,
                                                      valueOrDefault<String>(
                                                        widget!.editReminder
                                                            ?.displayedPlantName,
                                                        'it',
                                                      ),
                                                      'fertilizing',
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      20,
                                                    );
                                                  } else {
                                                    await actions
                                                        .cancelNotifications(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      20,
                                                    );
                                                    await actions
                                                        .deleteNotificationDetails(
                                                      widget!.editReminder!
                                                          .hashedID,
                                                      20,
                                                    );
                                                  }

                                                  context.pushNamed('MyPlant');
                                                },
                                          text: 'Set Reminder',
                                          options: FFButtonOptions(
                                            width: 230.0,
                                            height: 56.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
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
                                            elevation: 2.0,
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
        ),
      ),
    );
  }
}
