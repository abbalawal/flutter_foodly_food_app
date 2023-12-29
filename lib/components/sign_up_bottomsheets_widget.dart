import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/log_in_empty_bottomsheets_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_bottomsheets_model.dart';
export 'sign_up_bottomsheets_model.dart';

class SignUpBottomsheetsWidget extends StatefulWidget {
  const SignUpBottomsheetsWidget({Key? key}) : super(key: key);

  @override
  _SignUpBottomsheetsWidgetState createState() =>
      _SignUpBottomsheetsWidgetState();
}

class _SignUpBottomsheetsWidgetState extends State<SignUpBottomsheetsWidget> {
  late SignUpBottomsheetsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpBottomsheetsModel());

    _model.fullnameController ??= TextEditingController();
    _model.emailController ??= TextEditingController();
    _model.phoneNumberController ??= TextEditingController();
    _model.userAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.passwordRetypedController ??= TextEditingController();
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
      height: 861.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: SingleChildScrollView(
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
                        'NAME',
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
                        controller: _model.fullnameController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'john doe',
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
                        validator: _model.fullnameControllerValidator
                            .asValidator(context),
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
                        'Are you a seller?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              fontSize: 16.0,
                            ),
                      ),
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _model.usertypeValue ??= false,
                          onChanged: (newValue) async {
                            setState(() => _model.usertypeValue = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                    ],
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
                        validator: _model.emailControllerValidator
                            .asValidator(context),
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
                        'PHONE NUMBER',
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
                        controller: _model.phoneNumberController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: '+234.....',
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
                        validator: _model.phoneNumberControllerValidator
                            .asValidator(context),
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
                        'ADDRESS',
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
                        controller: _model.userAddressController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Please type in your address',
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
                        validator: _model.userAddressControllerValidator
                            .asValidator(context),
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'RE-TYPE PASSWORD',
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
                        controller: _model.passwordRetypedController,
                        autofocus: true,
                        obscureText: !_model.passwordRetypedVisibility,
                        decoration: InputDecoration(
                          labelText: 'type in your password again...',
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
                              () => _model.passwordRetypedVisibility =
                                  !_model.passwordRetypedVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordRetypedVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 19.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.passwordRetypedControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 31.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      if (_model.passwordController.text !=
                          _model.passwordRetypedController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Passwords don\'t match!',
                            ),
                          ),
                        );
                        return;
                      }

                      final user = await authManager.createAccountWithEmail(
                        context,
                        _model.emailController.text,
                        _model.passwordController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      await UsersRecord.collection
                          .doc(user.uid)
                          .update(createUsersRecordData(
                            displayName: _model.fullnameController.text,
                            seller: false,
                            usertype: _model.usertypeValue,
                            phoneNumber: _model.phoneNumberController.text,
                            userAddress: _model.userAddressController.text,
                          ));

                      if (_model.usertypeValue!) {
                        context.pushNamedAuth(
                            'SellerDashboardHome', context.mounted);
                      } else {
                        context.pushNamedAuth('HomeV2', context.mounted);
                      }
                    },
                    text: 'Sign Up',
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do you have an account already?',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
                                child: LogInEmptyBottomsheetsWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Text(
                        'Login',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
