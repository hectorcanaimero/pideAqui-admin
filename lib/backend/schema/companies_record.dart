import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "estimateDeliveryTime" field.
  int? _estimateDeliveryTime;
  int get estimateDeliveryTime => _estimateDeliveryTime ?? 0;
  bool hasEstimateDeliveryTime() => _estimateDeliveryTime != null;

  // "deliveryPriceMode" field.
  String? _deliveryPriceMode;
  String get deliveryPriceMode => _deliveryPriceMode ?? '';
  bool hasDeliveryPriceMode() => _deliveryPriceMode != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "numberDecimal" field.
  int? _numberDecimal;
  int get numberDecimal => _numberDecimal ?? 0;
  bool hasNumberDecimal() => _numberDecimal != null;

  // "acceptPaymentInCash" field.
  bool? _acceptPaymentInCash;
  bool get acceptPaymentInCash => _acceptPaymentInCash ?? false;
  bool hasAcceptPaymentInCash() => _acceptPaymentInCash != null;

  // "decimalSeparator" field.
  String? _decimalSeparator;
  String get decimalSeparator => _decimalSeparator ?? '';
  bool hasDecimalSeparator() => _decimalSeparator != null;

  // "paymentUponDelivery" field.
  List<PaymentUponDeliveryStruct>? _paymentUponDelivery;
  List<PaymentUponDeliveryStruct> get paymentUponDelivery =>
      _paymentUponDelivery ?? const [];
  bool hasPaymentUponDelivery() => _paymentUponDelivery != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "cAt" field.
  DateTime? _cAt;
  DateTime? get cAt => _cAt;
  bool hasCAt() => _cAt != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "operationMode" field.
  List<String>? _operationMode;
  List<String> get operationMode => _operationMode ?? const [];
  bool hasOperationMode() => _operationMode != null;

  // "fixedTax" field.
  double? _fixedTax;
  double get fixedTax => _fixedTax ?? 0.0;
  bool hasFixedTax() => _fixedTax != null;

  // "pricePerNeighborhood" field.
  List<PrecioBarrioStruct>? _pricePerNeighborhood;
  List<PrecioBarrioStruct> get pricePerNeighborhood =>
      _pricePerNeighborhood ?? const [];
  bool hasPricePerNeighborhood() => _pricePerNeighborhood != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _logo = snapshotData['logo'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _country = snapshotData['country'] as String?;
    _estimateDeliveryTime =
        castToType<int>(snapshotData['estimateDeliveryTime']);
    _deliveryPriceMode = snapshotData['deliveryPriceMode'] as String?;
    _currency = snapshotData['currency'] as String?;
    _numberDecimal = castToType<int>(snapshotData['numberDecimal']);
    _acceptPaymentInCash = snapshotData['acceptPaymentInCash'] as bool?;
    _decimalSeparator = snapshotData['decimalSeparator'] as String?;
    _paymentUponDelivery = getStructList(
      snapshotData['paymentUponDelivery'],
      PaymentUponDeliveryStruct.fromMap,
    );
    _user = snapshotData['user'] as DocumentReference?;
    _cAt = snapshotData['cAt'] as DateTime?;
    _slug = snapshotData['slug'] as String?;
    _operationMode = getDataList(snapshotData['operationMode']);
    _fixedTax = castToType<double>(snapshotData['fixedTax']);
    _pricePerNeighborhood = getStructList(
      snapshotData['pricePerNeighborhood'],
      PrecioBarrioStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaniesRecord.fromSnapshot(s));

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaniesRecord.fromSnapshot(s));

  static CompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaniesRecordData({
  String? name,
  String? logo,
  String? phone,
  String? email,
  String? country,
  int? estimateDeliveryTime,
  String? deliveryPriceMode,
  String? currency,
  int? numberDecimal,
  bool? acceptPaymentInCash,
  String? decimalSeparator,
  DocumentReference? user,
  DateTime? cAt,
  String? slug,
  double? fixedTax,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'logo': logo,
      'phone': phone,
      'email': email,
      'country': country,
      'estimateDeliveryTime': estimateDeliveryTime,
      'deliveryPriceMode': deliveryPriceMode,
      'currency': currency,
      'numberDecimal': numberDecimal,
      'acceptPaymentInCash': acceptPaymentInCash,
      'decimalSeparator': decimalSeparator,
      'user': user,
      'cAt': cAt,
      'slug': slug,
      'fixedTax': fixedTax,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.logo == e2?.logo &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.country == e2?.country &&
        e1?.estimateDeliveryTime == e2?.estimateDeliveryTime &&
        e1?.deliveryPriceMode == e2?.deliveryPriceMode &&
        e1?.currency == e2?.currency &&
        e1?.numberDecimal == e2?.numberDecimal &&
        e1?.acceptPaymentInCash == e2?.acceptPaymentInCash &&
        e1?.decimalSeparator == e2?.decimalSeparator &&
        listEquality.equals(e1?.paymentUponDelivery, e2?.paymentUponDelivery) &&
        e1?.user == e2?.user &&
        e1?.cAt == e2?.cAt &&
        e1?.slug == e2?.slug &&
        listEquality.equals(e1?.operationMode, e2?.operationMode) &&
        e1?.fixedTax == e2?.fixedTax &&
        listEquality.equals(e1?.pricePerNeighborhood, e2?.pricePerNeighborhood);
  }

  @override
  int hash(CompaniesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.logo,
        e?.phone,
        e?.email,
        e?.country,
        e?.estimateDeliveryTime,
        e?.deliveryPriceMode,
        e?.currency,
        e?.numberDecimal,
        e?.acceptPaymentInCash,
        e?.decimalSeparator,
        e?.paymentUponDelivery,
        e?.user,
        e?.cAt,
        e?.slug,
        e?.operationMode,
        e?.fixedTax,
        e?.pricePerNeighborhood
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}
