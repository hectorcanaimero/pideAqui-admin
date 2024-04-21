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
      _companyRef = prefs.getString('ff_companyRef')?.ref ?? _companyRef;
    });
    _safeInit(() {
      _companyName = prefs.getString('ff_companyName') ?? _companyName;
    });
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  set companyRef(DocumentReference? value) {
    _companyRef = value;
    value != null
        ? prefs.setString('ff_companyRef', value.path)
        : prefs.remove('ff_companyRef');
  }

  String _companyName = '';
  String get companyName => _companyName;
  set companyName(String value) {
    _companyName = value;
    prefs.setString('ff_companyName', value);
  }

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
