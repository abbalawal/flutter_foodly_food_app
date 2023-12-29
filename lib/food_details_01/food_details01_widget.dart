import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_details01_model.dart';
export 'food_details01_model.dart';

class FoodDetails01Widget extends StatefulWidget {
  const FoodDetails01Widget({
    Key? key,
    this.foodRef,
  }) : super(key: key);

  final DocumentReference? foodRef;

  @override
  _FoodDetails01WidgetState createState() => _FoodDetails01WidgetState();
}

class _FoodDetails01WidgetState extends State<FoodDetails01Widget> {
  late FoodDetails01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodDetails01Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<FoodRecord>(
      stream: FoodRecord.getDocument(widget.foodRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final foodDetails01FoodRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'HomeV2',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 500),
                                    ),
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Back1.png',
                                  width: 45.0,
                                  height: 45.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Food Details',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    fontSize: 17.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                110.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'EditCart',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 500),
                                    ),
                                  },
                                );
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Cart.png',
                                        width: 45.0,
                                        height: 45.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: StreamBuilder<List<CartRecord>>(
                                      stream: queryCartRecord(
                                        queryBuilder: (cartRecord) =>
                                            cartRecord.where('buyer_email',
                                                isEqualTo: currentUserEmail),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<CartRecord>
                                            containerCartRecordList =
                                            snapshot.data!;
                                        return Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                containerCartRecordList.length
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Sen',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                      child: Container(
                        width: 327.0,
                        height: 210.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF98A8B8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              foodDetails01FoodRecord.image,
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 170.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Container(
                                      width: 90.0,
                                      height: 28.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(61.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Delivery',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Text(
                              foodDetails01FoodRecord.foodname,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: Color(0xFF32343E),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 28.0, 0.0),
                            child: Text(
                              formatNumber(
                                foodDetails01FoodRecord.price,
                                formatType: FormatType.custom,
                                currency: '₦',
                                format: '',
                                locale: '',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: Color(0xFF32343E),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 327.0,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Description',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 27.0, 0.0),
                              child: Text(
                                foodDetails01FoodRecord.details,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Sen',
                                      fontSize: 13.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                      child: Container(
                        width: 375.0,
                        height: 235.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD6E4F2),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      formatNumber(
                                        functions.finalPrice(
                                            foodDetails01FoodRecord.price,
                                            FFAppState().quantity),
                                        formatType: FormatType.custom,
                                        currency: '₦',
                                        format: '',
                                        locale: '',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            fontSize: 28.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        156.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 125.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF121223),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 24.0,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF646982),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().quantity =
                                                          FFAppState()
                                                                  .quantity +
                                                              -1;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.horizontal_rule,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Text(
                                              FFAppState().quantity.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Sen',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: 24.0,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF646982),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().quantity =
                                                          FFAppState()
                                                                  .quantity +
                                                              1;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Note: Payment will be made on Delivery',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        77.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'EditCart',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Cart.png',
                                                width: 45.0,
                                                height: 45.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child:
                                                StreamBuilder<List<CartRecord>>(
                                              stream: queryCartRecord(
                                                queryBuilder: (cartRecord) =>
                                                    cartRecord.where(
                                                        'buyer_email',
                                                        isEqualTo:
                                                            currentUserEmail),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CartRecord>
                                                    containerCartRecordList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: 25.0,
                                                  height: 25.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        containerCartRecordList
                                                            .length
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily: 'Sen',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        77.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'EditCart',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Cart.png',
                                                width: 45.0,
                                                height: 45.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child:
                                                StreamBuilder<List<CartRecord>>(
                                              stream: queryCartRecord(
                                                queryBuilder: (cartRecord) =>
                                                    cartRecord.where(
                                                        'buyer_email',
                                                        isEqualTo:
                                                            currentUserEmail),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CartRecord>
                                                    containerCartRecordList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: 25.0,
                                                  height: 25.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        containerCartRecordList
                                                            .length
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily: 'Sen',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 18.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await CartRecord.collection
                                      .doc()
                                      .set(createCartRecordData(
                                        foodname:
                                            foodDetails01FoodRecord.foodname,
                                        image: foodDetails01FoodRecord.image,
                                        price: foodDetails01FoodRecord.price,
                                        quantity: FFAppState().quantity,
                                        buyerEmail: currentUserEmail,
                                      ));
                                  setState(() {
                                    FFAppState().addToFoodname(
                                        foodDetails01FoodRecord.foodname);
                                    FFAppState().addToFoodquantity(
                                        FFAppState().quantity);
                                    FFAppState().addToFoodprices(
                                        functions.finalPrice(
                                            foodDetails01FoodRecord.price,
                                            FFAppState().quantity));
                                    FFAppState().addToFoodimages(
                                        foodDetails01FoodRecord.image);
                                  });
                                  setState(() {
                                    FFAppState().totalPrice =
                                        FFAppState().totalPrice +
                                            functions.finalPrice(
                                                foodDetails01FoodRecord.price,
                                                FFAppState().quantity);
                                  });
                                  setState(() {
                                    FFAppState().quantity = 1;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Adding to Cart',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );

                                  context.pushNamed(
                                    'HomeV2',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 500),
                                      ),
                                    },
                                  );
                                },
                                text: 'ADD TO CART',
                                options: FFButtonOptions(
                                  width: 327.0,
                                  height: 62.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
