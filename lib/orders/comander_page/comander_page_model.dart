import '/flutter_flow/flutter_flow_util.dart';
import 'comander_page_widget.dart' show ComanderPageWidget;
import 'package:flutter/material.dart';

class ComanderPageModel extends FlutterFlowModel<ComanderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
