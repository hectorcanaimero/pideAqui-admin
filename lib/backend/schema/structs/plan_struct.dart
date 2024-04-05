// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanStruct extends FFFirebaseStruct {
  PlanStruct({
    String? name,
    String? description,
    int? limitProducts,
    double? price,
    int? order,
    List<String>? integrations,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _limitProducts = limitProducts,
        _price = price,
        _order = order,
        _integrations = integrations,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "limit_products" field.
  int? _limitProducts;
  int get limitProducts => _limitProducts ?? 0;
  set limitProducts(int? val) => _limitProducts = val;
  void incrementLimitProducts(int amount) =>
      _limitProducts = limitProducts + amount;
  bool hasLimitProducts() => _limitProducts != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;
  void incrementOrder(int amount) => _order = order + amount;
  bool hasOrder() => _order != null;

  // "integrations" field.
  List<String>? _integrations;
  List<String> get integrations => _integrations ?? const [];
  set integrations(List<String>? val) => _integrations = val;
  void updateIntegrations(Function(List<String>) updateFn) =>
      updateFn(_integrations ??= []);
  bool hasIntegrations() => _integrations != null;

  static PlanStruct fromMap(Map<String, dynamic> data) => PlanStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        limitProducts: castToType<int>(data['limit_products']),
        price: castToType<double>(data['price']),
        order: castToType<int>(data['order']),
        integrations: getDataList(data['integrations']),
      );

  static PlanStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'limit_products': _limitProducts,
        'price': _price,
        'order': _order,
        'integrations': _integrations,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'limit_products': serializeParam(
          _limitProducts,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'integrations': serializeParam(
          _integrations,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static PlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        limitProducts: deserializeParam(
          data['limit_products'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        integrations: deserializeParam<String>(
          data['integrations'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlanStruct &&
        name == other.name &&
        description == other.description &&
        limitProducts == other.limitProducts &&
        price == other.price &&
        order == other.order &&
        listEquality.equals(integrations, other.integrations);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, description, limitProducts, price, order, integrations]);
}

PlanStruct createPlanStruct({
  String? name,
  String? description,
  int? limitProducts,
  double? price,
  int? order,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlanStruct(
      name: name,
      description: description,
      limitProducts: limitProducts,
      price: price,
      order: order,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlanStruct? updatePlanStruct(
  PlanStruct? plan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlanStructData(
  Map<String, dynamic> firestoreData,
  PlanStruct? plan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plan == null) {
    return;
  }
  if (plan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && plan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final planData = getPlanFirestoreData(plan, forFieldValue);
  final nestedData = planData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = plan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlanFirestoreData(
  PlanStruct? plan, [
  bool forFieldValue = false,
]) {
  if (plan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plan.toMap());

  // Add any Firestore field values
  plan.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlanListFirestoreData(
  List<PlanStruct>? plans,
) =>
    plans?.map((e) => getPlanFirestoreData(e, true)).toList() ?? [];
