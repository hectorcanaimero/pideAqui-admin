import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_product_page_widget.dart' show CreateProductPageWidget;
import 'package:flutter/material.dart';

class CreateProductPageModel extends FlutterFlowModel<CreateProductPageWidget> {
  ///  Local state fields for this page.

  String image = 'https://placehold.co/600x300';

  DocumentReference? uidProduct;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for StatusSwitch widget.
  bool? statusSwitchValue;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ExtrasSwitch widget.
  bool? extrasSwitchValue;
  // State field(s) for MinField widget.
  FocusNode? minFieldFocusNode;
  TextEditingController? minFieldController;
  String? Function(BuildContext, String?)? minFieldControllerValidator;
  // State field(s) for MaxField widget.
  FocusNode? maxFieldFocusNode;
  TextEditingController? maxFieldController;
  String? Function(BuildContext, String?)? maxFieldControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? resProduct;
  // State field(s) for ExtraNameField widget.
  FocusNode? extraNameFieldFocusNode;
  TextEditingController? extraNameFieldController;
  String? Function(BuildContext, String?)? extraNameFieldControllerValidator;
  // State field(s) for PriceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldController;
  String? Function(BuildContext, String?)? priceFieldControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();

    minFieldFocusNode?.dispose();
    minFieldController?.dispose();

    maxFieldFocusNode?.dispose();
    maxFieldController?.dispose();

    extraNameFieldFocusNode?.dispose();
    extraNameFieldController?.dispose();

    priceFieldFocusNode?.dispose();
    priceFieldController?.dispose();
  }
}
