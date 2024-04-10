import '/flutter_flow/flutter_flow_util.dart';
import 'productos_page_widget.dart' show ProductosPageWidget;
import 'package:flutter/material.dart';

class ProductosPageModel extends FlutterFlowModel<ProductosPageWidget> {
  ///  Local state fields for this page.

  bool activeMenu = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in ProductosPage widget.
  int? countProduct;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  int? haveProduct;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
