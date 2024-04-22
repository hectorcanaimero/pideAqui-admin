// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends FFFirebaseStruct {
  CompanyStruct({
    DocumentReference? ref,
    String? name,
    List<String>? operationMode,
    String? phone,
    int? step,
    String? country,
    String? email,
    bool? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ref = ref,
        _name = name,
        _operationMode = operationMode,
        _phone = phone,
        _step = step,
        _country = country,
        _email = email,
        _status = status,
        super(firestoreUtilData);

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  set ref(DocumentReference? val) => _ref = val;
  bool hasRef() => _ref != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "operationMode" field.
  List<String>? _operationMode;
  List<String> get operationMode => _operationMode ?? const [];
  set operationMode(List<String>? val) => _operationMode = val;
  void updateOperationMode(Function(List<String>) updateFn) =>
      updateFn(_operationMode ??= []);
  bool hasOperationMode() => _operationMode != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "step" field.
  int? _step;
  int get step => _step ?? 0;
  set step(int? val) => _step = val;
  void incrementStep(int amount) => _step = step + amount;
  bool hasStep() => _step != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;
  bool hasStatus() => _status != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        ref: data['ref'] as DocumentReference?,
        name: data['name'] as String?,
        operationMode: getDataList(data['operationMode']),
        phone: data['phone'] as String?,
        step: castToType<int>(data['step']),
        country: data['country'] as String?,
        email: data['email'] as String?,
        status: data['status'] as bool?,
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ref': _ref,
        'name': _name,
        'operationMode': _operationMode,
        'phone': _phone,
        'step': _step,
        'country': _country,
        'email': _email,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ref': serializeParam(
          _ref,
          ParamType.DocumentReference,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'operationMode': serializeParam(
          _operationMode,
          ParamType.String,
          true,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'step': serializeParam(
          _step,
          ParamType.int,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStruct(
        ref: deserializeParam(
          data['ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['companies'],
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        operationMode: deserializeParam<String>(
          data['operationMode'],
          ParamType.String,
          true,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        step: deserializeParam(
          data['step'],
          ParamType.int,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStruct &&
        ref == other.ref &&
        name == other.name &&
        listEquality.equals(operationMode, other.operationMode) &&
        phone == other.phone &&
        step == other.step &&
        country == other.country &&
        email == other.email &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ref, name, operationMode, phone, step, country, email, status]);
}

CompanyStruct createCompanyStruct({
  DocumentReference? ref,
  String? name,
  String? phone,
  int? step,
  String? country,
  String? email,
  bool? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyStruct(
      ref: ref,
      name: name,
      phone: phone,
      step: step,
      country: country,
      email: email,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyStruct? updateCompanyStruct(
  CompanyStruct? company, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    company
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyStructData(
  Map<String, dynamic> firestoreData,
  CompanyStruct? company,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (company == null) {
    return;
  }
  if (company.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && company.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyData = getCompanyFirestoreData(company, forFieldValue);
  final nestedData = companyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = company.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyFirestoreData(
  CompanyStruct? company, [
  bool forFieldValue = false,
]) {
  if (company == null) {
    return {};
  }
  final firestoreData = mapToFirestore(company.toMap());

  // Add any Firestore field values
  company.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyListFirestoreData(
  List<CompanyStruct>? companys,
) =>
    companys?.map((e) => getCompanyFirestoreData(e, true)).toList() ?? [];
