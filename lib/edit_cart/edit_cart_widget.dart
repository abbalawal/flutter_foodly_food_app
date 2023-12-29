import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/final_cart_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_cart_model.dart';
export 'edit_cart_model.dart';

class EditCartWidget extends StatefulWidget {
  const EditCartWidget({Key? key}) : super(key: key);

  @override
  _EditCartWidgetState createState() => _EditCartWidgetState();
}

class _EditCartWidgetState extends State<EditCartWidget> {
  late EditCartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditCartModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFF121223),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Cart:${formatNumber(
              FFAppState().totalPrice,
              formatType: FormatType.custom,
              currency: '₦',
              format: '',
              locale: '',
            )}',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sen',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await OrderRecord.collection.doc().set({
                        ...createOrderRecordData(
                          orderUserAddress: valueOrDefault(
                              currentUserDocument?.userAddress, ''),
                          orderUserPhoneNumber: currentPhoneNumber,
                        ),
                        'foodname': FFAppState().foodname,
                        'price': FFAppState().foodprices,
                        'images': FFAppState().foodimages,
                        'quantity': FFAppState().foodquantity,
                      });
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
                              child: Container(
                                height: 320.0,
                                child: FinalCartWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Text(
                      'Done',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sen',
                            color: FlutterFlowTheme.of(context).success,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: 812.0,
            decoration: BoxDecoration(
              color: Color(0xFF121223),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<List<CartRecord>>(
                  stream: queryCartRecord(
                    queryBuilder: (cartRecord) => cartRecord
                        .where('buyer_email', isEqualTo: currentUserEmail),
                  ),
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
                    List<CartRecord> listViewCartRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewCartRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewCartRecord =
                            listViewCartRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 136.0,
                                      height: 117.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF2A2A39),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            listViewCartRecord.image,
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 126.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(),
                                          child: Text(
                                            listViewCartRecord.foodname,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${formatNumber(
                                              listViewCartRecord.price,
                                              formatType: FormatType.custom,
                                              currency: '₦',
                                              format: '',
                                              locale: '',
                                            )}x${listViewCartRecord.quantity.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    60.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await listViewCartRecord
                                                    .reference
                                                    .delete();
                                                setState(() {
                                                  FFAppState()
                                                      .removeFromFoodname(
                                                          listViewCartRecord
                                                              .foodname);
                                                  FFAppState()
                                                      .removeFromFoodquantity(
                                                          listViewCartRecord
                                                              .quantity);
                                                  FFAppState()
                                                      .removeFromFoodprices(
                                                          listViewCartRecord
                                                              .price);
                                                  FFAppState()
                                                      .removeFromFoodimages(
                                                          listViewCartRecord
                                                              .image);
                                                });
                                                setState(() {
                                                  FFAppState()
                                                      .totalPrice = FFAppState()
                                                          .totalPrice +
                                                      functions
                                                          .negativeFinalPrice(
                                                              listViewCartRecord
                                                                  .price);
                                                });
                                              },
                                              child: Text(
                                                'Delete',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Sen',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 16.0,
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
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
