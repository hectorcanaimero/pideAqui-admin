import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_company_page_widget.dart' show CreateCompanyPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateCompanyPageModel extends FlutterFlowModel<CreateCompanyPageWidget> {
  ///  Local state fields for this page.

  String? slug;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  String? _nameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SlugField widget.
  FocusNode? slugFieldFocusNode;
  TextEditingController? slugFieldController;
  String? Function(BuildContext, String?)? slugFieldControllerValidator;
  String? _slugFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in SlugField widget.
  CompaniesRecord? aleradyexist;
  // State field(s) for CountryDown widget.
  String? countryDownValue;
  FormFieldController<String>? countryDownValueController;
  // State field(s) for VenField widget.
  FocusNode? venFieldFocusNode;
  TextEditingController? venFieldController;
  final venFieldMask = MaskTextInputFormatter(mask: '(####) ###-##-##');
  String? Function(BuildContext, String?)? venFieldControllerValidator;
  // State field(s) for RDField widget.
  FocusNode? rDFieldFocusNode;
  TextEditingController? rDFieldController;
  final rDFieldMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? rDFieldControllerValidator;
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  String? _emailFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CompaniesRecord? crateCompany;

  @override
  void initState(BuildContext context) {
    nameFieldControllerValidator = _nameFieldControllerValidator;
    slugFieldControllerValidator = _slugFieldControllerValidator;
    emailFieldControllerValidator = _emailFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    slugFieldFocusNode?.dispose();
    slugFieldController?.dispose();

    venFieldFocusNode?.dispose();
    venFieldController?.dispose();

    rDFieldFocusNode?.dispose();
    rDFieldController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();
  }
}
