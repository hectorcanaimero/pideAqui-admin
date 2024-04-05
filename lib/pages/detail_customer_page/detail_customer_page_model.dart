import '/flutter_flow/flutter_flow_util.dart';
import 'detail_customer_page_widget.dart' show DetailCustomerPageWidget;
import 'package:flutter/material.dart';

class DetailCustomerPageModel
    extends FlutterFlowModel<DetailCustomerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
