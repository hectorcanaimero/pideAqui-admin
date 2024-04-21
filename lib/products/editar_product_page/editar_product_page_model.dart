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
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  // State field(s) for PriceField widget.
  FocusNode? priceFieldFocusNode1;
  TextEditingController? priceFieldTextController1;
  String? Function(BuildContext, String?)? priceFieldTextController1Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ExtrasSwitch widget.
  bool? extrasSwitchValue;
  // State field(s) for MinField widget.
  FocusNode? minFieldFocusNode;
  TextEditingController? minFieldTextController;
  String? Function(BuildContext, String?)? minFieldTextControllerValidator;
  // State field(s) for MaxField widget.
  FocusNode? maxFieldFocusNode;
  TextEditingController? maxFieldTextController;
  String? Function(BuildContext, String?)? maxFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? resProduct;
  // State field(s) for ExtraNameField widget.
  FocusNode? extraNameFieldFocusNode;
  TextEditingController? extraNameFieldTextController;
  String? Function(BuildContext, String?)?
      extraNameFieldTextControllerValidator;
  // State field(s) for PriceField widget.
  FocusNode? priceFieldFocusNode2;
  TextEditingController? priceFieldTextController2;
  String? Function(BuildContext, String?)? priceFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();

    priceFieldFocusNode1?.dispose();
    priceFieldTextController1?.dispose();

    minFieldFocusNode?.dispose();
    minFieldTextController?.dispose();

    maxFieldFocusNode?.dispose();
    maxFieldTextController?.dispose();

    extraNameFieldFocusNode?.dispose();
    extraNameFieldTextController?.dispose();

    priceFieldFocusNode2?.dispose();
    priceFieldTextController2?.dispose();
  }
}
