import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'productos_page_widget.dart' show ProductosPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductosPageModel extends FlutterFlowModel<ProductosPageWidget> {
  ///  Local state fields for this page.

  bool activeMenu = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in ProductosPage widget.
  int? countProduct;
  Completer<List<ProductsRecord>>? firestoreRequestCompleter;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CategoriasListView widget.

  PagingController<DocumentSnapshot?, CategoriesRecord>?
      categoriasListViewPagingController;
  Query? categoriasListViewPagingQuery;
  List<StreamSubscription?> categoriasListViewStreamSubscriptions = [];

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  int? haveProduct;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    for (var s in categoriasListViewStreamSubscriptions) {
      s?.cancel();
    }
    categoriasListViewPagingController?.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<DocumentSnapshot?, CategoriesRecord>
      setCategoriasListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    categoriasListViewPagingController ??=
        _createCategoriasListViewController(query, parent);
    if (categoriasListViewPagingQuery != query) {
      categoriasListViewPagingQuery = query;
      categoriasListViewPagingController?.refresh();
    }
    return categoriasListViewPagingController!;
  }

  PagingController<DocumentSnapshot?, CategoriesRecord>
      _createCategoriasListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, CategoriesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryCategoriesRecordPage(
          queryBuilder: (_) => categoriasListViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: categoriasListViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
