import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'running_orders_model.dart';
export 'running_orders_model.dart';

class RunningOrdersWidget extends StatefulWidget {
  const RunningOrdersWidget({Key? key}) : super(key: key);

  @override
  _RunningOrdersWidgetState createState() => _RunningOrdersWidgetState();
}

class _RunningOrdersWidgetState extends State<RunningOrdersWidget> {
  late RunningOrdersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RunningOrdersModel());
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
      height: 812.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFC1C8D2),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
              child: FutureBuilder<int>(
                future: queryOrderRecordCount(),
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
                  int rowCount = snapshot.data!;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '${rowCount.toString()} Running Orders',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Sen',
                                    fontSize: 17.0,
                                  ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: StreamBuilder<List<OrderRecord>>(
                stream: queryOrderRecord(),
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
                  List<OrderRecord> listViewOrderRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewOrderRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewOrderRecord =
                          listViewOrderRecordList[listViewIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listViewOrderRecord.foodname[0],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Color(0xFF32343E),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listViewOrderRecord.foodname[1],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Color(0xFF32343E),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listViewOrderRecord.foodname[2],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Color(0xFF32343E),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Phone Number: ${listViewOrderRecord.orderUserPhoneNumber}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Color(0xFF9C9BA6),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Address: ${listViewOrderRecord.orderUserAddress}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Color(0xFF9C9BA6),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 14.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await listViewOrderRecord.reference
                                              .delete();
                                        },
                                        text: 'Done',
                                        options: FFButtonOptions(
                                          width: 79.0,
                                          height: 36.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Sen',
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                  ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(9.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${listViewOrderRecord.price[0].toString()}x${listViewOrderRecord.quantity[0].toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Sen',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${listViewOrderRecord.price[1].toString()}x${listViewOrderRecord.quantity[1].toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Sen',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${listViewOrderRecord.price[2].toString()}x${listViewOrderRecord.quantity[2].toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Sen',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
