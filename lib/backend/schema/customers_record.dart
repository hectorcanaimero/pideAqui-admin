import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomersRecord extends FirestoreRecord {
  CustomersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  // "orderCount" field.
  int? _orderCount;
  int get orderCount => _orderCount ?? 0;
  bool hasOrderCount() => _orderCount != null;

  void _initializeFields() {
    _fullname = snapshotData['fullname'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _address = snapshotData['address'] as String?;
    _company = snapshotData['company'] as DocumentReference?;
    _cAt = snapshotData['cAt'] as DateTime?;
    _orderCount = castToType<int>(snapshotData['orderCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomersRecord.fromSnapshot(s));

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomersRecord.fromSnapshot(s));

  static CustomersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomersRecordData({
  String? fullname,
  String? phone,
  String? email,
  String? address,
  DocumentReference? company,
  DateTime? cAt,
  int? orderCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fullname': fullname,
      'phone': phone,
      'email': email,
      'address': address,
      'company': company,
      'cAt': cAt,
      'orderCount': orderCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomersRecordDocumentEquality implements Equality<CustomersRecord> {
  const CustomersRecordDocumentEquality();

  @override
  bool equals(CustomersRecord? e1, CustomersRecord? e2) {
    return e1?.fullname == e2?.fullname &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.address == e2?.address &&
        e1?.company == e2?.company &&
        e1?.cAt == e2?.cAt &&
        e1?.orderCount == e2?.orderCount;
  }

  @override
  int hash(CustomersRecord? e) => const ListEquality().hash([
        e?.fullname,
        e?.phone,
        e?.email,
        e?.address,
        e?.company,
        e?.cAt,
        e?.orderCount
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomersRecord;
}
