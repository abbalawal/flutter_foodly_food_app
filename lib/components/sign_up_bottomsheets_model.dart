import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/log_in_empty_bottomsheets_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpBottomsheetsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Fullname widget.
  TextEditingController? fullnameController;
  String? Function(BuildContext, String?)? fullnameControllerValidator;
  // State field(s) for usertype widget.
  bool? usertypeValue;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for userAddress widget.
  TextEditingController? userAddressController;
  String? Function(BuildContext, String?)? userAddressControllerValidator;
  // State field(s) for Password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for Password_retyped widget.
  TextEditingController? passwordRetypedController;
  late bool passwordRetypedVisibility;
  String? Function(BuildContext, String?)? passwordRetypedControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordRetypedVisibility = false;
  }

  void dispose() {
    fullnameController?.dispose();
    emailController?.dispose();
    phoneNumberController?.dispose();
    userAddressController?.dispose();
    passwordController?.dispose();
    passwordRetypedController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
