import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_userPlan')) {
        try {
          final serializedData = prefs.getString('ff_userPlan') ?? '{}';
          _userPlan =
              PlanStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _settingStatus = prefs.getInt('ff_settingStatus') ?? _settingStatus;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_company')) {
        try {
          final serializedData = prefs.getString('ff_company') ?? '{}';
          _company =
              CompanyStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  PlanStruct _userPlan = PlanStruct();
  PlanStruct get userPlan => _userPlan;
  set userPlan(PlanStruct value) {
    _userPlan = value;
    prefs.setString('ff_userPlan', value.serialize());
  }

  void updateUserPlanStruct(Function(PlanStruct) updateFn) {
    updateFn(_userPlan);
    prefs.setString('ff_userPlan', _userPlan.serialize());
  }

  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  set categoryRef(DocumentReference? value) {
    _categoryRef = value;
  }

  int _settingStatus = 0;
  int get settingStatus => _settingStatus;
  set settingStatus(int value) {
    _settingStatus = value;
    prefs.setInt('ff_settingStatus', value);
  }

  CompanyStruct _company = CompanyStruct();
  CompanyStruct get company => _company;
  set company(CompanyStruct value) {
    _company = value;
    prefs.setString('ff_company', value.serialize());
  }

  void updateCompanyStruct(Function(CompanyStruct) updateFn) {
    updateFn(_company);
    prefs.setString('ff_company', _company.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
