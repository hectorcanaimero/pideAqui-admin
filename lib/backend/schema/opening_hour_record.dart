import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class OpeningHourRecord extends FirestoreRecord {
  OpeningHourRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  bool hasEnd() => _end != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _day = snapshotData['day'] as String?;
    _start = snapshotData['start'] as String?;
    _end = snapshotData['end'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('openingHour')
          : FirebaseFirestore.instance.collectionGroup('openingHour');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('openingHour').doc(id);

  static Stream<OpeningHourRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OpeningHourRecord.fromSnapshot(s));

  static Future<OpeningHourRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OpeningHourRecord.fromSnapshot(s));

  static OpeningHourRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OpeningHourRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OpeningHourRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OpeningHourRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OpeningHourRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OpeningHourRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOpeningHourRecordData({
  String? day,
  String? start,
  String? end,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'start': start,
      'end': end,
    }.withoutNulls,
  );

  return firestoreData;
}

class OpeningHourRecordDocumentEquality implements Equality<OpeningHourRecord> {
  const OpeningHourRecordDocumentEquality();

  @override
  bool equals(OpeningHourRecord? e1, OpeningHourRecord? e2) {
    return e1?.day == e2?.day && e1?.start == e2?.start && e1?.end == e2?.end;
  }

  @override
  int hash(OpeningHourRecord? e) =>
      const ListEquality().hash([e?.day, e?.start, e?.end]);

  @override
  bool isValidKey(Object? o) => o is OpeningHourRecord;
}
