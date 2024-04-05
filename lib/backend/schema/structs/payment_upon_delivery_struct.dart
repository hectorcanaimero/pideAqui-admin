// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentUponDeliveryStruct extends FFFirebaseStruct {
  PaymentUponDeliveryStruct({
    String? name,
    String? description,
    bool? ststus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _ststus = ststus,
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

  // "ststus" field.
  bool? _ststus;
  bool get ststus => _ststus ?? true;
  set ststus(bool? val) => _ststus = val;
  bool hasStstus() => _ststus != null;

  static PaymentUponDeliveryStruct fromMap(Map<String, dynamic> data) =>
      PaymentUponDeliveryStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        ststus: data['ststus'] as bool?,
      );

  static PaymentUponDeliveryStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentUponDeliveryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'ststus': _ststus,
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
        'ststus': serializeParam(
          _ststus,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PaymentUponDeliveryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PaymentUponDeliveryStruct(
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
        ststus: deserializeParam(
          data['ststus'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PaymentUponDeliveryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentUponDeliveryStruct &&
        name == other.name &&
        description == other.description &&
        ststus == other.ststus;
  }

  @override
  int get hashCode => const ListEquality().hash([name, description, ststus]);
}

PaymentUponDeliveryStruct createPaymentUponDeliveryStruct({
  String? name,
  String? description,
  bool? ststus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentUponDeliveryStruct(
      name: name,
      description: description,
      ststus: ststus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentUponDeliveryStruct? updatePaymentUponDeliveryStruct(
  PaymentUponDeliveryStruct? paymentUponDelivery, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentUponDelivery
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentUponDeliveryStructData(
  Map<String, dynamic> firestoreData,
  PaymentUponDeliveryStruct? paymentUponDelivery,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentUponDelivery == null) {
    return;
  }
  if (paymentUponDelivery.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentUponDelivery.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentUponDeliveryData =
      getPaymentUponDeliveryFirestoreData(paymentUponDelivery, forFieldValue);
  final nestedData =
      paymentUponDeliveryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      paymentUponDelivery.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentUponDeliveryFirestoreData(
  PaymentUponDeliveryStruct? paymentUponDelivery, [
  bool forFieldValue = false,
]) {
  if (paymentUponDelivery == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentUponDelivery.toMap());

  // Add any Firestore field values
  paymentUponDelivery.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentUponDeliveryListFirestoreData(
  List<PaymentUponDeliveryStruct>? paymentUponDeliverys,
) =>
    paymentUponDeliverys
        ?.map((e) => getPaymentUponDeliveryFirestoreData(e, true))
        .toList() ??
    [];
