import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editcart_bottomsheets_model.dart';
export 'editcart_bottomsheets_model.dart';

class EditcartBottomsheetsWidget extends StatefulWidget {
  const EditcartBottomsheetsWidget({Key? key}) : super(key: key);

  @override
  _EditcartBottomsheetsWidgetState createState() =>
      _EditcartBottomsheetsWidgetState();
}

class _EditcartBottomsheetsWidgetState
    extends State<EditcartBottomsheetsWidget> {
  late EditcartBottomsheetsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditcartBottomsheetsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 375.0,
          height: 310.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'DELIVERY ADDRESS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: Color(0xFFA0A5BA),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                      child: Text(
                        'EDIT',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: FlutterFlowTheme.of(context).primary,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 327.0,
                  height: 62.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F5FA),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 22.0, 0.0, 0.0),
                    child: Text(
                      '2118 Thornridge Cir. Syracuse',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sen',
                            color: Color(0xFF32343E),
                            fontSize: 16.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'TOTAL:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: Color(0xFFA0A5BA),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '\$96',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: Color(0xFF181C2E),
                              fontSize: 30.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(131.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'BREAKDOWN',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: FlutterFlowTheme.of(context).primary,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Place Order',
                  options: FFButtonOptions(
                    width: 327.0,
                    height: 62.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Sen',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
