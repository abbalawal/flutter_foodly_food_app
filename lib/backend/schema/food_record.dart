import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodRecord extends FirestoreRecord {
  FoodRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foodname" field.
  String? _foodname;
  String get foodname => _foodname ?? '';
  bool hasFoodname() => _foodname != null;

  // "pickup" field.
  bool? _pickup;
  bool get pickup => _pickup ?? false;
  bool hasPickup() => _pickup != null;

  // "delivery" field.
  bool? _delivery;
  bool get delivery => _delivery ?? false;
  bool hasDelivery() => _delivery != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _foodname = snapshotData['foodname'] as String?;
    _pickup = snapshotData['pickup'] as bool?;
    _delivery = snapshotData['delivery'] as bool?;
    _details = snapshotData['details'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food');

  static Stream<FoodRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodRecord.fromSnapshot(s));

  static Future<FoodRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodRecord.fromSnapshot(s));

  static FoodRecord fromSnapshot(DocumentSnapshot snapshot) => FoodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodRecordData({
  String? foodname,
  bool? pickup,
  bool? delivery,
  String? details,
  double? price,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foodname': foodname,
      'pickup': pickup,
      'delivery': delivery,
      'details': details,
      'price': price,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodRecordDocumentEquality implements Equality<FoodRecord> {
  const FoodRecordDocumentEquality();

  @override
  bool equals(FoodRecord? e1, FoodRecord? e2) {
    return e1?.foodname == e2?.foodname &&
        e1?.pickup == e2?.pickup &&
        e1?.delivery == e2?.delivery &&
        e1?.details == e2?.details &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image;
  }

  @override
  int hash(FoodRecord? e) => const ListEquality().hash(
      [e?.foodname, e?.pickup, e?.delivery, e?.details, e?.price, e?.image]);

  @override
  bool isValidKey(Object? o) => o is FoodRecord;
}
