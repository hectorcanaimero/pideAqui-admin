import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_category_component_widget.dart'
    show CreateCategoryComponentWidget;
import 'package:flutter/material.dart';

class CreateCategoryComponentModel
    extends FlutterFlowModel<CreateCategoryComponentWidget> {
  ///  Local state fields for this component.

  String image =
      'https://gravatar.com/avatar/0361e40b90a43567c73a64c7db0e6ff4?s=400&d=robohash&r=x';

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
