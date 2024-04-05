import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "extras" field.
  bool? _extras;
  bool get extras => _extras ?? false;
  bool hasExtras() => _extras != null;

  // "min" field.
  int? _min;
  int get min => _min ?? 0;
  bool hasMin() => _min != null;

  // "max" field.
  int? _max;
  int get max => _max ?? 0;
  bool hasMax() => _max != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

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

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _extras = snapshotData['extras'] as bool?;
    _min = castToType<int>(snapshotData['min']);
    _max = castToType<int>(snapshotData['max']);
    _status = snapshotData['status'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _cAt = snapshotData['cAt'] as DateTime?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _uAt = snapshotData['uAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? image,
  String? description,
  DocumentReference? category,
  double? price,
  bool? extras,
  int? min,
  int? max,
  bool? status,
  DocumentReference? user,
  DateTime? cAt,
  DocumentReference? companyRef,
  DateTime? uAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'description': description,
      'category': category,
      'price': price,
      'extras': extras,
      'min': min,
      'max': max,
      'status': status,
      'user': user,
      'cAt': cAt,
      'companyRef': companyRef,
      'uAt': uAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.price == e2?.price &&
        e1?.extras == e2?.extras &&
        e1?.min == e2?.min &&
        e1?.max == e2?.max &&
        e1?.status == e2?.status &&
        e1?.user == e2?.user &&
        e1?.cAt == e2?.cAt &&
        e1?.companyRef == e2?.companyRef &&
        e1?.uAt == e2?.uAt;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.description,
        e?.category,
        e?.price,
        e?.extras,
        e?.min,
        e?.max,
        e?.status,
        e?.user,
        e?.cAt,
        e?.companyRef,
        e?.uAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
