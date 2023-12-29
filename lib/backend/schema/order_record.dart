import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foodname" field.
  List<String>? _foodname;
  List<String> get foodname => _foodname ?? const [];
  bool hasFoodname() => _foodname != null;

  // "price" field.
  List<double>? _price;
  List<double> get price => _price ?? const [];
  bool hasPrice() => _price != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "quantity" field.
  List<int>? _quantity;
  List<int> get quantity => _quantity ?? const [];
  bool hasQuantity() => _quantity != null;

  // "orderUserAddress" field.
  String? _orderUserAddress;
  String get orderUserAddress => _orderUserAddress ?? '';
  bool hasOrderUserAddress() => _orderUserAddress != null;

  // "orderUserPhoneNumber" field.
  String? _orderUserPhoneNumber;
  String get orderUserPhoneNumber => _orderUserPhoneNumber ?? '';
  bool hasOrderUserPhoneNumber() => _orderUserPhoneNumber != null;

  void _initializeFields() {
    _foodname = getDataList(snapshotData['foodname']);
    _price = getDataList(snapshotData['price']);
    _images = getDataList(snapshotData['images']);
    _quantity = getDataList(snapshotData['quantity']);
    _orderUserAddress = snapshotData['orderUserAddress'] as String?;
    _orderUserPhoneNumber = snapshotData['orderUserPhoneNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? orderUserAddress,
  String? orderUserPhoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderUserAddress': orderUserAddress,
      'orderUserPhoneNumber': orderUserPhoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.foodname, e2?.foodname) &&
        listEquality.equals(e1?.price, e2?.price) &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.quantity, e2?.quantity) &&
        e1?.orderUserAddress == e2?.orderUserAddress &&
        e1?.orderUserPhoneNumber == e2?.orderUserPhoneNumber;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.foodname,
        e?.price,
        e?.images,
        e?.quantity,
        e?.orderUserAddress,
        e?.orderUserPhoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
