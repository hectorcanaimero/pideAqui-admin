import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class OrderStatusRecord extends FirestoreRecord {
  OrderStatusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderStatus');

  static Stream<OrderStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderStatusRecord.fromSnapshot(s));

  static Future<OrderStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderStatusRecord.fromSnapshot(s));

  static OrderStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderStatusRecordData({
  String? name,
  Color? color,
  DocumentReference? companyRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'color': color,
      'companyRef': companyRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderStatusRecordDocumentEquality implements Equality<OrderStatusRecord> {
  const OrderStatusRecordDocumentEquality();

  @override
  bool equals(OrderStatusRecord? e1, OrderStatusRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.color == e2?.color &&
        e1?.companyRef == e2?.companyRef;
  }

  @override
  int hash(OrderStatusRecord? e) =>
      const ListEquality().hash([e?.name, e?.color, e?.companyRef]);

  @override
  bool isValidKey(Object? o) => o is OrderStatusRecord;
}
