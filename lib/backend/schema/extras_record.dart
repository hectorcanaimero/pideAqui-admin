import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExtrasRecord extends FirestoreRecord {
  ExtrasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _status = snapshotData['status'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('extras')
          : FirebaseFirestore.instance.collectionGroup('extras');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('extras').doc(id);

  static Stream<ExtrasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExtrasRecord.fromSnapshot(s));

  static Future<ExtrasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExtrasRecord.fromSnapshot(s));

  static ExtrasRecord fromSnapshot(DocumentSnapshot snapshot) => ExtrasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExtrasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExtrasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExtrasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExtrasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExtrasRecordData({
  String? name,
  double? price,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExtrasRecordDocumentEquality implements Equality<ExtrasRecord> {
  const ExtrasRecordDocumentEquality();

  @override
  bool equals(ExtrasRecord? e1, ExtrasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status;
  }

  @override
  int hash(ExtrasRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.status]);

  @override
  bool isValidKey(Object? o) => o is ExtrasRecord;
}
