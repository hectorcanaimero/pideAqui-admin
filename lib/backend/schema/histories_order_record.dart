import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HistoriesOrderRecord extends FirestoreRecord {
  HistoriesOrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _cAt = snapshotData['cAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('historiesOrder')
          : FirebaseFirestore.instance.collectionGroup('historiesOrder');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('historiesOrder').doc(id);

  static Stream<HistoriesOrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoriesOrderRecord.fromSnapshot(s));

  static Future<HistoriesOrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoriesOrderRecord.fromSnapshot(s));

  static HistoriesOrderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoriesOrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoriesOrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoriesOrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoriesOrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoriesOrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoriesOrderRecordData({
  String? status,
  DateTime? cAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'cAt': cAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoriesOrderRecordDocumentEquality
    implements Equality<HistoriesOrderRecord> {
  const HistoriesOrderRecordDocumentEquality();

  @override
  bool equals(HistoriesOrderRecord? e1, HistoriesOrderRecord? e2) {
    return e1?.status == e2?.status && e1?.cAt == e2?.cAt;
  }

  @override
  int hash(HistoriesOrderRecord? e) =>
      const ListEquality().hash([e?.status, e?.cAt]);

  @override
  bool isValidKey(Object? o) => o is HistoriesOrderRecord;
}
