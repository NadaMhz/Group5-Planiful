import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/complete_profile/profile_completesuccess/profile_completesuccess_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'complete_profile2_model.dart';
export 'complete_profile2_model.dart';

class CompleteProfile2Widget extends StatefulWidget {
  const CompleteProfile2Widget({super.key});

  @override
  State<CompleteProfile2Widget> createState() => _CompleteProfile2WidgetState();
}

class _CompleteProfile2WidgetState extends State<CompleteProfile2Widget> {
  late CompleteProfile2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfile2Model());
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

        final completeProfile2UserDetailsRecord = snapshot.data!;

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
              child: StreamBuilder<List<RoleApplicationRecord>>(
                stream: queryRoleApplicationRecord(
                  parent: completeProfile2UserDetailsRecord.reference,
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<RoleApplicationRecord> columnRoleApplicationRecordList =
                      snapshot.data!;
                  final columnRoleApplicationRecord =
                      columnRoleApplicationRecordList.isNotEmpty
                          ? columnRoleApplicationRecordList.first
                          : null;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  if ((FFAppState().completedpf1 == true) ||
                                      ((FFAppState().completedpf1 == true) &&
                                          (currentUserPhoto != null &&
                                              currentUserPhoto != '')))
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.28),
                                        child: AuthUserStreamWidget(
                                          builder: (context) =>
                                              LinearPercentIndicator(
                                            percent: 1.0,
                                            lineHeight: 10.0,
                                            animation: false,
                                            animateFromLastPercent: true,
                                            progressColor: Color(0xFF129C52),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            barRadius: Radius.circular(24.0),
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, 0.28),
                                      child: LinearPercentIndicator(
                                        percent: 1.0,
                                        lineHeight: 10.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: Color(0xFF129C52),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        barRadius: Radius.circular(24.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                  if ((valueOrDefault<bool>(
                                              currentUserDocument?.isPlantNanny,
                                              false) &&
                                          (columnRoleApplicationRecord
                                                      ?.applicationStatusNanny ==
                                                  null ||
                                              columnRoleApplicationRecord
                                                      ?.applicationStatusNanny ==
                                                  '')) ||
                                      (valueOrDefault<bool>(
                                              currentUserDocument
                                                  ?.isPlantExpert,
                                              false) &&
                                          (columnRoleApplicationRecord
                                                      ?.applicationStatusExpert ==
                                                  null ||
                                              columnRoleApplicationRecord
                                                      ?.applicationStatusExpert ==
                                                  '')))
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.28),
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
                                  'Specify your gender',
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
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData('Male', Icons.male),
                                                ChipData('Female', Icons.female)
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () =>
                                                      _model.choiceChipsValue =
                                                          val?.firstOrNull),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0xFF129C52),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 18.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0xFFE0E3E7),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 18.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              chipSpacing: 12.0,
                                              rowSpacing: 12.0,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                      .choiceChipsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              wrapped: true,
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 80.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: (_model.choiceChipsValue == null ||
                                      _model.choiceChipsValue == '')
                                  ? null
                                  : () async {
                                      FFAppState().completedpf2 = true;
                                      safeSetState(() {});
                                      if (_model.choiceChipsValue == 'Female') {
                                        await currentUserReference!
                                            .update(createUserDetailsRecordData(
                                          gender: 'Female',
                                        ));
                                      } else {
                                        await currentUserReference!
                                            .update(createUserDetailsRecordData(
                                          gender: 'Male',
                                        ));
                                      }

                                      if ((completeProfile2UserDetailsRecord
                                                  .isPlantNanny &&
                                              (columnRoleApplicationRecord
                                                          ?.applicationStatusNanny ==
                                                      null ||
                                                  columnRoleApplicationRecord
                                                          ?.applicationStatusNanny ==
                                                      '')) ||
                                          (completeProfile2UserDetailsRecord
                                                  .isPlantExpert &&
                                              (columnRoleApplicationRecord
                                                          ?.applicationStatusExpert ==
                                                      null ||
                                                  columnRoleApplicationRecord
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
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
                                    },
                              text: 'Continue',
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
                              FFAppState().completedpf2 = true;
                              safeSetState(() {});
                              if ((completeProfile2UserDetailsRecord
                                          .isPlantNanny &&
                                      (columnRoleApplicationRecord
                                                  ?.applicationStatusNanny ==
                                              null ||
                                          columnRoleApplicationRecord
                                                  ?.applicationStatusNanny ==
                                              '')) ||
                                  (completeProfile2UserDetailsRecord
                                          .isPlantExpert &&
                                      (columnRoleApplicationRecord
                                                  ?.applicationStatusExpert ==
                                              null ||
                                          columnRoleApplicationRecord
                                                  ?.applicationStatusExpert ==
                                              ''))) {
                                context.pushNamed('completeProfile3');
                              } else {
                                context.pushNamed('viewprofileNEW');
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
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
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
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
