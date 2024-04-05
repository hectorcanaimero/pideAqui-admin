// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderProductStruct extends FFFirebaseStruct {
  OrderProductStruct({
    int? qtd,
    DocumentReference? productRef,
    List<String>? extras,
    double? total,
    String? product,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _qtd = qtd,
        _productRef = productRef,
        _extras = extras,
        _total = total,
        _product = product,
        super(firestoreUtilData);

  // "qtd" field.
  int? _qtd;
  int get qtd => _qtd ?? 0;
  set qtd(int? val) => _qtd = val;
  void incrementQtd(int amount) => _qtd = qtd + amount;
  bool hasQtd() => _qtd != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  set productRef(DocumentReference? val) => _productRef = val;
  bool hasProductRef() => _productRef != null;

  // "extras" field.
  List<String>? _extras;
  List<String> get extras => _extras ?? const [];
  set extras(List<String>? val) => _extras = val;
  void updateExtras(Function(List<String>) updateFn) =>
      updateFn(_extras ??= []);
  bool hasExtras() => _extras != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;
  void incrementTotal(double amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  set product(String? val) => _product = val;
  bool hasProduct() => _product != null;

  static OrderProductStruct fromMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        qtd: castToType<int>(data['qtd']),
        productRef: data['productRef'] as DocumentReference?,
        extras: getDataList(data['extras']),
        total: castToType<double>(data['total']),
        product: data['product'] as String?,
      );

  static OrderProductStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'qtd': _qtd,
        'productRef': _productRef,
        'extras': _extras,
        'total': _total,
        'product': _product,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qtd': serializeParam(
          _qtd,
          ParamType.int,
        ),
        'productRef': serializeParam(
          _productRef,
          ParamType.DocumentReference,
        ),
        'extras': serializeParam(
          _extras,
          ParamType.String,
          true,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'product': serializeParam(
          _product,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        qtd: deserializeParam(
          data['qtd'],
          ParamType.int,
          false,
        ),
        productRef: deserializeParam(
          data['productRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
        extras: deserializeParam<String>(
          data['extras'],
          ParamType.String,
          true,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        product: deserializeParam(
          data['product'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderProductStruct &&
        qtd == other.qtd &&
        productRef == other.productRef &&
        listEquality.equals(extras, other.extras) &&
        total == other.total &&
        product == other.product;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([qtd, productRef, extras, total, product]);
}

OrderProductStruct createOrderProductStruct({
  int? qtd,
  DocumentReference? productRef,
  double? total,
  String? product,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderProductStruct(
      qtd: qtd,
      productRef: productRef,
      total: total,
      product: product,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderProductStruct? updateOrderProductStruct(
  OrderProductStruct? orderProduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderProduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderProductStructData(
  Map<String, dynamic> firestoreData,
  OrderProductStruct? orderProduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderProduct == null) {
    return;
  }
  if (orderProduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderProduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderProductData =
      getOrderProductFirestoreData(orderProduct, forFieldValue);
  final nestedData =
      orderProductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderProduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderProductFirestoreData(
  OrderProductStruct? orderProduct, [
  bool forFieldValue = false,
]) {
  if (orderProduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderProduct.toMap());

  // Add any Firestore field values
  orderProduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderProductListFirestoreData(
  List<OrderProductStruct>? orderProducts,
) =>
    orderProducts?.map((e) => getOrderProductFirestoreData(e, true)).toList() ??
    [];
