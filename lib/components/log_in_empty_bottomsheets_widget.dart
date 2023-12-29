import '/auth/firebase_auth/auth_util.dart';
import '/components/sign_up_bottomsheets_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'log_in_empty_bottomsheets_model.dart';
export 'log_in_empty_bottomsheets_model.dart';

class LogInEmptyBottomsheetsWidget extends StatefulWidget {
  const LogInEmptyBottomsheetsWidget({Key? key}) : super(key: key);

  @override
  _LogInEmptyBottomsheetsWidgetState createState() =>
      _LogInEmptyBottomsheetsWidgetState();
}

class _LogInEmptyBottomsheetsWidgetState
    extends State<LogInEmptyBottomsheetsWidget> {
  late LogInEmptyBottomsheetsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInEmptyBottomsheetsModel());

    _model.emailController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 375.0,
      height: 579.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'EMAIL',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sen',
                            fontSize: 13.0,
                          ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                  child: Container(
                    width: 327.0,
                    child: TextFormField(
                      controller: _model.emailController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'example@gmail.com',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Sen',
                                  color: Color(0xFFA0A5BA),
                                ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF0F5FA),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 23.0, 0.0, 22.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator:
                          _model.emailControllerValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'PASSWORD',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sen',
                            fontSize: 13.0,
                          ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                  child: Container(
                    width: 327.0,
                    child: TextFormField(
                      controller: _model.passwordController,
                      autofocus: true,
                      obscureText: !_model.passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'type in your password...',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Sen',
                                  color: Color(0xFFA0A5BA),
                                ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF0F5FA),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 10.0, 0.0, 22.0),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => _model.passwordVisibility =
                                !_model.passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 19.0,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.passwordControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'recoverPassword',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                        ),
                      },
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Sen',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();

                    final user = await authManager.signInWithEmail(
                      context,
                      _model.emailController.text,
                      _model.passwordController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    if (valueOrDefault<bool>(
                        currentUserDocument?.usertype, false)) {
                      context.pushNamedAuth(
                          'SellerDashboardHome', context.mounted);
                    } else {
                      context.pushNamedAuth('HomeV2', context.mounted);
                    }
                  },
                  text: 'Log In',
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
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(62.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Don’t have an account?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Sen',
                          fontSize: 13.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: 700.0,
                              child: SignUpBottomsheetsWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Text(
                      'Sign Up',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sen',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 13.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
