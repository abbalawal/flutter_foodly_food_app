import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foodname" field.
  String? _foodname;
  String get foodname => _foodname ?? '';
  bool hasFoodname() => _foodname != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "buyer_email" field.
  String? _buyerEmail;
  String get buyerEmail => _buyerEmail ?? '';
  bool hasBuyerEmail() => _buyerEmail != null;

  void _initializeFields() {
    _foodname = snapshotData['foodname'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _buyerEmail = snapshotData['buyer_email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? foodname,
  String? image,
  double? price,
  int? quantity,
  String? buyerEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foodname': foodname,
      'image': image,
      'price': price,
      'quantity': quantity,
      'buyer_email': buyerEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.foodname == e2?.foodname &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.buyerEmail == e2?.buyerEmail;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.foodname, e?.image, e?.price, e?.quantity, e?.buyerEmail]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
