import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'plantadded_model.dart';
export 'plantadded_model.dart';

class PlantaddedWidget extends StatefulWidget {
  const PlantaddedWidget({super.key});

  @override
  State<PlantaddedWidget> createState() => _PlantaddedWidgetState();
}

class _PlantaddedWidgetState extends State<PlantaddedWidget> {
  late PlantaddedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlantaddedModel());
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
              'assets/images/plant_(2).png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 16.0),
              child: Text(
                ' Your plant has been added!',
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
                'Head over to your plant to check it out and start caring for your new green friend!',
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
              FFAppState().progressValue = 0.0;
              FFAppState().isSearchPressed = false;
              safeSetState(() {});
            },
            text: 'Go to My plant',
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
