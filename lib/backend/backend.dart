import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/food_record.dart';
import 'schema/cart_record.dart';
import 'schema/order_record.dart';
import 'schema/payment_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/food_record.dart';
export 'schema/cart_record.dart';
export 'schema/order_record.dart';
export 'schema/payment_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FoodRecords (as a Stream and as a Future).
Future<int> queryFoodRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FoodRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FoodRecord>> queryFoodRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FoodRecord.collection,
      FoodRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FoodRecord>> queryFoodRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FoodRecord.collection,
      FoodRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CartRecords (as a Stream and as a Future).
Future<int> queryCartRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CartRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CartRecord>> queryCartRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CartRecord.collection,
      CartRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CartRecord>> queryCartRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CartRecord.collection,
      CartRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query OrderRecords (as a Stream and as a Future).
Future<int> queryOrderRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      OrderRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<OrderRecord>> queryOrderRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      OrderRecord.collection,
      OrderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<OrderRecord>> queryOrderRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      OrderRecord.collection,
      OrderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PaymentRecords (as a Stream and as a Future).
Future<int> queryPaymentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PaymentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PaymentRecord>> queryPaymentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PaymentRecord.collection,
      PaymentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PaymentRecord>> queryPaymentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PaymentRecord.collection,
      PaymentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
