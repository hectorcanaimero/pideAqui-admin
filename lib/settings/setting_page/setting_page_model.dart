import '/flutter_flow/flutter_flow_util.dart';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:flutter/material.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
