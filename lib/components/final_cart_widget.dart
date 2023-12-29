import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'final_cart_model.dart';
export 'final_cart_model.dart';

class FinalCartWidget extends StatefulWidget {
  const FinalCartWidget({Key? key}) : super(key: key);

  @override
  _FinalCartWidgetState createState() => _FinalCartWidgetState();
}

class _FinalCartWidgetState extends State<FinalCartWidget> {
  late FinalCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalCartModel());
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
          height: 250.0,
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
                        'ORDER CONFIRMATION',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: Color(0xFFA0A5BA),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Note: Payment will be made on delivery.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.w600,
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
                        formatNumber(
                          FFAppState().totalPrice,
                          formatType: FormatType.custom,
                          currency: '₦',
                          format: '',
                          locale: '',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sen',
                              color: Color(0xFF181C2E),
                              fontSize: 30.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: StreamBuilder<List<CartRecord>>(
                  stream: queryCartRecord(),
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
                    List<CartRecord> buttonCartRecordList = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        await PaymentRecord.collection
                            .doc()
                            .set(createPaymentRecordData(
                              name: currentUserDisplayName,
                              amount: FFAppState().totalPrice,
                            ));
                        await buttonCartRecordList[0].reference.delete();
                        await buttonCartRecordList[1].reference.delete();
                        await buttonCartRecordList[2].reference.delete();
                        setState(() {
                          FFAppState().totalPrice = 0;
                          FFAppState().foodname = [];
                          FFAppState().foodprices = [];
                          FFAppState().foodimages = [];
                          FFAppState().foodquantity = [];
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Order Placed Successfully!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );

                        context.pushNamed('HomeV2');
                      },
                      text: 'Place Order',
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
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
