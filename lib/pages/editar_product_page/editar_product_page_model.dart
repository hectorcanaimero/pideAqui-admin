import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_product_page_widget.dart' show EditarProductPageWidget;
import 'package:flutter/material.dart';

class EditarProductPageModel extends FlutterFlowModel<EditarProductPageWidget> {
  ///  Local state fields for this page.

  String image = '';

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
  // State field(s) for PriceField widget.
  FocusNode? priceFieldFocusNode1;
  TextEditingController? priceFieldController1;
  String? Function(BuildContext, String?)? priceFieldController1Validator;
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
  FocusNode? priceFieldFocusNode2;
  TextEditingController? priceFieldController2;
  String? Function(BuildContext, String?)? priceFieldController2Validator;

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

    priceFieldFocusNode1?.dispose();
    priceFieldController1?.dispose();

    minFieldFocusNode?.dispose();
    minFieldController?.dispose();

    maxFieldFocusNode?.dispose();
    maxFieldController?.dispose();

    extraNameFieldFocusNode?.dispose();
    extraNameFieldController?.dispose();

    priceFieldFocusNode2?.dispose();
    priceFieldController2?.dispose();
  }
}
