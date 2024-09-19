import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addplant_model.dart';
export 'addplant_model.dart';

class AddplantWidget extends StatefulWidget {
  const AddplantWidget({super.key});

  @override
  State<AddplantWidget> createState() => _AddplantWidgetState();
}

class _AddplantWidgetState extends State<AddplantWidget> {
  late AddplantModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddplantModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 240.0,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://images.unsplash.com/photo-1503149779833-1de50ebe5f8a?w=1280&h=720',
                        width: double.infinity,
                        height: 290.0,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.1, -1.11),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 16.0, 0.0),
                          child: FlutterFlowIconButton(
                            buttonSize: 45.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: FaIcon(
                              FontAwesomeIcons.edit,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: 200.0,
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController,
                          child: ExpandablePanel(
                            header: Text(
                              'Description',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -100.0),
                                  child: Text(
                                    'Scientific Name: Mentha arvensis\n',
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0x8A000000),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'a species of flowering plant in the mint family, Lamiaceae. It is native to North America and is known for its aromatic leaves and cooling flavor. Commonly used in culinary and medicinal applications, wild mint thrives in moist environments and can be found in meadows, wetlands, and near streams.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.top,
                              hasIcon: true,
                              expandIcon: Icons.read_more_sharp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
