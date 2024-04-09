import '/flutter_flow/flutter_flow_util.dart';
import 'editar_category_component_widget.dart'
    show EditarCategoryComponentWidget;
import 'package:flutter/material.dart';

class EditarCategoryComponentModel
    extends FlutterFlowModel<EditarCategoryComponentWidget> {
  ///  Local state fields for this component.

  String image = '';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for OrderField widget.
  FocusNode? orderFieldFocusNode;
  TextEditingController? orderFieldController;
  String? Function(BuildContext, String?)? orderFieldControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    orderFieldFocusNode?.dispose();
    orderFieldController?.dispose();
  }
}
