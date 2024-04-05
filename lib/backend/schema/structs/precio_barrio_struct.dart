// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrecioBarrioStruct extends FFFirebaseStruct {
  PrecioBarrioStruct({
    String? barrio,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _barrio = barrio,
        _price = price,
        super(firestoreUtilData);

  // "barrio" field.
  String? _barrio;
  String get barrio => _barrio ?? '';
  set barrio(String? val) => _barrio = val;
  bool hasBarrio() => _barrio != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static PrecioBarrioStruct fromMap(Map<String, dynamic> data) =>
      PrecioBarrioStruct(
        barrio: data['barrio'] as String?,
        price: castToType<double>(data['price']),
      );

  static PrecioBarrioStruct? maybeFromMap(dynamic data) => data is Map
      ? PrecioBarrioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'barrio': _barrio,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'barrio': serializeParam(
          _barrio,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static PrecioBarrioStruct fromSerializableMap(Map<String, dynamic> data) =>
      PrecioBarrioStruct(
        barrio: deserializeParam(
          data['barrio'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PrecioBarrioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PrecioBarrioStruct &&
        barrio == other.barrio &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([barrio, price]);
}

PrecioBarrioStruct createPrecioBarrioStruct({
  String? barrio,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PrecioBarrioStruct(
      barrio: barrio,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PrecioBarrioStruct? updatePrecioBarrioStruct(
  PrecioBarrioStruct? precioBarrio, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    precioBarrio
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPrecioBarrioStructData(
  Map<String, dynamic> firestoreData,
  PrecioBarrioStruct? precioBarrio,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (precioBarrio == null) {
    return;
  }
  if (precioBarrio.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && precioBarrio.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final precioBarrioData =
      getPrecioBarrioFirestoreData(precioBarrio, forFieldValue);
  final nestedData =
      precioBarrioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = precioBarrio.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPrecioBarrioFirestoreData(
  PrecioBarrioStruct? precioBarrio, [
  bool forFieldValue = false,
]) {
  if (precioBarrio == null) {
    return {};
  }
  final firestoreData = mapToFirestore(precioBarrio.toMap());

  // Add any Firestore field values
  precioBarrio.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPrecioBarrioListFirestoreData(
  List<PrecioBarrioStruct>? precioBarrios,
) =>
    precioBarrios?.map((e) => getPrecioBarrioFirestoreData(e, true)).toList() ??
    [];
