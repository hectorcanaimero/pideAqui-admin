import '/flutter_flow/flutter_flow_util.dart';
import 'create_banner_page_widget.dart' show CreateBannerPageWidget;
import 'package:flutter/material.dart';

class CreateBannerPageModel extends FlutterFlowModel<CreateBannerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  // State field(s) for StartField widget.
  FocusNode? startFieldFocusNode;
  TextEditingController? startFieldTextController;
  String? Function(BuildContext, String?)? startFieldTextControllerValidator;
  // State field(s) for EndField widget.
  FocusNode? endFieldFocusNode;
  TextEditingController? endFieldTextController;
  String? Function(BuildContext, String?)? endFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();

    startFieldFocusNode?.dispose();
    startFieldTextController?.dispose();

    endFieldFocusNode?.dispose();
    endFieldTextController?.dispose();
  }
}
