import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BannersRecord extends FirestoreRecord {
  BannersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  // "start" field.
  DateTime? _start;
  DateTime? get start => _start;
  bool hasStart() => _start != null;

  // "end" field.
  DateTime? _end;
  DateTime? get end => _end;
  bool hasEnd() => _end != null;

  // "uAt" field.
  DateTime? _uAt;
  DateTime? get uAt => _uAt;
  bool hasUAt() => _uAt != null;

  void _initializeFields() {
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _image = snapshotData['image'] as String?;
    _status = snapshotData['status'] as bool?;
    _cAt = snapshotData['cAt'] as DateTime?;
    _start = snapshotData['start'] as DateTime?;
    _end = snapshotData['end'] as DateTime?;
    _uAt = snapshotData['uAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannersRecord.fromSnapshot(s));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannersRecord.fromSnapshot(s));

  static BannersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannersRecordData({
  DocumentReference? companyRef,
  String? title,
  String? image,
  bool? status,
  DateTime? cAt,
  DateTime? start,
  DateTime? end,
  DateTime? uAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyRef': companyRef,
      'title': title,
      'image': image,
      'status': status,
      'cAt': cAt,
      'start': start,
      'end': end,
      'uAt': uAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannersRecordDocumentEquality implements Equality<BannersRecord> {
  const BannersRecordDocumentEquality();

  @override
  bool equals(BannersRecord? e1, BannersRecord? e2) {
    return e1?.companyRef == e2?.companyRef &&
        e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.status == e2?.status &&
        e1?.cAt == e2?.cAt &&
        e1?.start == e2?.start &&
        e1?.end == e2?.end &&
        e1?.uAt == e2?.uAt;
  }

  @override
  int hash(BannersRecord? e) => const ListEquality().hash([
        e?.companyRef,
        e?.title,
        e?.image,
        e?.status,
        e?.cAt,
        e?.start,
        e?.end,
        e?.uAt
      ]);

  @override
  bool isValidKey(Object? o) => o is BannersRecord;
}
