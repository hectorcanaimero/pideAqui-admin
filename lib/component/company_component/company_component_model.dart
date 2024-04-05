import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'company_component_widget.dart' show CompanyComponentWidget;
import 'package:flutter/material.dart';

class CompanyComponentModel extends FlutterFlowModel<CompanyComponentWidget> {
  ///  State fields for stateful widgets in this component.

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
  // State field(s) for WhatsField widget.
  FocusNode? whatsFieldFocusNode;
  TextEditingController? whatsFieldController;
  String? Function(BuildContext, String?)? whatsFieldControllerValidator;
  String? _whatsFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CompaniesRecord? crateCompany;

  @override
  void initState(BuildContext context) {
    nameFieldControllerValidator = _nameFieldControllerValidator;
    slugFieldControllerValidator = _slugFieldControllerValidator;
    whatsFieldControllerValidator = _whatsFieldControllerValidator;
    emailFieldControllerValidator = _emailFieldControllerValidator;
  }

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    slugFieldFocusNode?.dispose();
    slugFieldController?.dispose();

    whatsFieldFocusNode?.dispose();
    whatsFieldController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();
  }
}
