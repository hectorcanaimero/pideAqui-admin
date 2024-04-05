import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  // "uAt" field.
  DateTime? _uAt;
  DateTime? get uAt => _uAt;
  bool hasUAt() => _uAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "delivery" field.
  double? _delivery;
  double get delivery => _delivery ?? 0.0;
  bool hasDelivery() => _delivery != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "paymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  // "customer" field.
  DocumentReference? _customer;
  DocumentReference? get customer => _customer;
  bool hasCustomer() => _customer != null;

  // "statusRef" field.
  DocumentReference? _statusRef;
  DocumentReference? get statusRef => _statusRef;
  bool hasStatusRef() => _statusRef != null;

  void _initializeFields() {
    _cAt = snapshotData['cAt'] as DateTime?;
    _uAt = snapshotData['uAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _delivery = castToType<double>(snapshotData['delivery']);
    _total = castToType<double>(snapshotData['total']);
    _paymentType = snapshotData['paymentType'] as String?;
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _company = snapshotData['company'] as DocumentReference?;
    _customer = snapshotData['customer'] as DocumentReference?;
    _statusRef = snapshotData['statusRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? cAt,
  DateTime? uAt,
  String? status,
  double? delivery,
  double? total,
  String? paymentType,
  String? paymentMethod,
  DocumentReference? company,
  DocumentReference? customer,
  DocumentReference? statusRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cAt': cAt,
      'uAt': uAt,
      'status': status,
      'delivery': delivery,
      'total': total,
      'paymentType': paymentType,
      'paymentMethod': paymentMethod,
      'company': company,
      'customer': customer,
      'statusRef': statusRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.cAt == e2?.cAt &&
        e1?.uAt == e2?.uAt &&
        e1?.status == e2?.status &&
        e1?.delivery == e2?.delivery &&
        e1?.total == e2?.total &&
        e1?.paymentType == e2?.paymentType &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.company == e2?.company &&
        e1?.customer == e2?.customer &&
        e1?.statusRef == e2?.statusRef;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.cAt,
        e?.uAt,
        e?.status,
        e?.delivery,
        e?.total,
        e?.paymentType,
        e?.paymentMethod,
        e?.company,
        e?.customer,
        e?.statusRef
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
