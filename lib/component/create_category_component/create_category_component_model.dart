import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_category_component_widget.dart'
    show CreateCategoryComponentWidget;
import 'package:flutter/material.dart';

class CreateCategoryComponentModel
    extends FlutterFlowModel<CreateCategoryComponentWidget> {
  ///  Local state fields for this component.

  String image = 'https://placehold.co/300x300';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in CreateCategoryComponent widget.
  CategoriesRecord? categoryData;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
