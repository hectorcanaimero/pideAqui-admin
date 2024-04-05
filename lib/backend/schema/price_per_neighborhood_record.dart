import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricePerNeighborhoodRecord extends FirestoreRecord {
  PricePerNeighborhoodRecord._(
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
          ? parent.collection('pricePerNeighborhood')
          : FirebaseFirestore.instance.collectionGroup('pricePerNeighborhood');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('pricePerNeighborhood').doc(id);

  static Stream<PricePerNeighborhoodRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => PricePerNeighborhoodRecord.fromSnapshot(s));

  static Future<PricePerNeighborhoodRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PricePerNeighborhoodRecord.fromSnapshot(s));

  static PricePerNeighborhoodRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricePerNeighborhoodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricePerNeighborhoodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricePerNeighborhoodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricePerNeighborhoodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricePerNeighborhoodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricePerNeighborhoodRecordData({
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

class PricePerNeighborhoodRecordDocumentEquality
    implements Equality<PricePerNeighborhoodRecord> {
  const PricePerNeighborhoodRecordDocumentEquality();

  @override
  bool equals(PricePerNeighborhoodRecord? e1, PricePerNeighborhoodRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status;
  }

  @override
  int hash(PricePerNeighborhoodRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.status]);

  @override
  bool isValidKey(Object? o) => o is PricePerNeighborhoodRecord;
}
