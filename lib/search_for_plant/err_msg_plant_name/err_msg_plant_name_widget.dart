import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'err_msg_plant_name_model.dart';
export 'err_msg_plant_name_model.dart';

class ErrMsgPlantNameWidget extends StatefulWidget {
  const ErrMsgPlantNameWidget({super.key});

  @override
  State<ErrMsgPlantNameWidget> createState() => _ErrMsgPlantNameWidgetState();
}

class _ErrMsgPlantNameWidgetState extends State<ErrMsgPlantNameWidget> {
  late ErrMsgPlantNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrMsgPlantNameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301.0,
      height: 305.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Untitled_design_(1).png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 12.0),
              child: Text(
                'Oops!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
              child: Text(
                'We couldn’t find the plant you’re looking for, make sure you entered the name correctly.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              Navigator.pop(context);
            },
            text: 'Search again',
            options: FFButtonOptions(
              width: 130.0,
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF129C52),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
        ],
      ),
    );
  }
}
