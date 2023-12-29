import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _address = snapshotData['address'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? name,
  double? amount,
  String? address,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'address': address,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.address == e2?.address &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality()
      .hash([e?.name, e?.amount, e?.address, e?.phoneNumber]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
