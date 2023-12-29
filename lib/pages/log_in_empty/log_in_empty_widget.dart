import '/components/log_in_empty_bottomsheets_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'log_in_empty_model.dart';
export 'log_in_empty_model.dart';

class LogInEmptyWidget extends StatefulWidget {
  const LogInEmptyWidget({Key? key}) : super(key: key);

  @override
  _LogInEmptyWidgetState createState() => _LogInEmptyWidgetState();
}

class _LogInEmptyWidgetState extends State<LogInEmptyWidget> {
  late LogInEmptyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInEmptyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 500));
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () =>
                FocusScope.of(context).requestFocus(_model.unfocusNode),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: Container(
                height: 700.0,
                child: LogInEmptyBottomsheetsWidget(),
              ),
            ),
          );
        },
      ).then((value) => setState(() {}));
    });
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
          child: Container(
            width: double.infinity,
            height: 812.0,
            decoration: BoxDecoration(
              color: Color(0xFF121223),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 118.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: LogInEmptyBottomsheetsWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Log In',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Please sign in to your existing account',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Sen',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Ellipse_1005_(2).png',
                    width: 141.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
