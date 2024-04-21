import '/flutter_flow/flutter_flow_util.dart';
import 'detail_order_page_widget.dart' show DetailOrderPageWidget;
import 'package:flutter/material.dart';

class DetailOrderPageModel extends FlutterFlowModel<DetailOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
