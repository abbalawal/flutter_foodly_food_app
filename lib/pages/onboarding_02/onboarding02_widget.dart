import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding02_model.dart';
export 'onboarding02_model.dart';

class Onboarding02Widget extends StatefulWidget {
  const Onboarding02Widget({Key? key}) : super(key: key);

  @override
  _Onboarding02WidgetState createState() => _Onboarding02WidgetState();
}

class _Onboarding02WidgetState extends State<Onboarding02Widget> {
  late Onboarding02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding02Model());
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 114.0, 0.0, 0.0),
                    child: Container(
                      width: 240.0,
                      height: 292.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF98A8B8),
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 67.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'All your favorites',
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Sen',
                                fontWeight: FontWeight.w800,
                              ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get all your loved foods in one once place,\nyou just place the orer we do the rest',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Sen',
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Group_3376.png',
                        width: 76.0,
                        height: 10.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 59.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'NEXT',
                      options: FFButtonOptions(
                        width: 327.0,
                        height: 62.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Sen',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Sen',
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
