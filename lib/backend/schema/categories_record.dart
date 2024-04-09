import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesRecord extends FirestoreRecord {
  CategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "uAt" field.
  DateTime? _uAt;
  DateTime? get uAt => _uAt;
  bool hasUAt() => _uAt != null;

  // "customerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _cAt = snapshotData['cAt'] as DateTime?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _uAt = snapshotData['uAt'] as DateTime?;
    _customerRef = snapshotData['customerRef'] as DocumentReference?;
    _status = snapshotData['status'] as bool?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categories');

  static Stream<CategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriesRecord.fromSnapshot(s));

  static Future<CategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriesRecord.fromSnapshot(s));

  static CategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriesRecordData({
  String? name,
  String? image,
  DocumentReference? user,
  DateTime? cAt,
  DocumentReference? companyRef,
  DateTime? uAt,
  DocumentReference? customerRef,
  bool? status,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'user': user,
      'cAt': cAt,
      'companyRef': companyRef,
      'uAt': uAt,
      'customerRef': customerRef,
      'status': status,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriesRecordDocumentEquality implements Equality<CategoriesRecord> {
  const CategoriesRecordDocumentEquality();

  @override
  bool equals(CategoriesRecord? e1, CategoriesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.user == e2?.user &&
        e1?.cAt == e2?.cAt &&
        e1?.companyRef == e2?.companyRef &&
        e1?.uAt == e2?.uAt &&
        e1?.customerRef == e2?.customerRef &&
        e1?.status == e2?.status &&
        e1?.order == e2?.order;
  }

  @override
  int hash(CategoriesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.user,
        e?.cAt,
        e?.companyRef,
        e?.uAt,
        e?.customerRef,
        e?.status,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoriesRecord;
}
