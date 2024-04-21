import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_company_page_widget.dart' show EditCompanyPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditCompanyPageModel extends FlutterFlowModel<EditCompanyPageWidget> {
  ///  Local state fields for this page.

  String? slug;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in EditCompanyPage widget.
  CompaniesRecord? resCompany;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  String? _nameFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CountryDown widget.
  String? countryDownValue;
  FormFieldController<String>? countryDownValueController;
  // State field(s) for VenField widget.
  FocusNode? venFieldFocusNode;
  TextEditingController? venFieldTextController;
  final venFieldMask = MaskTextInputFormatter(mask: '(####) ###-##-##');
  String? Function(BuildContext, String?)? venFieldTextControllerValidator;
  // State field(s) for RDField widget.
  FocusNode? rDFieldFocusNode;
  TextEditingController? rDFieldTextController;
  final rDFieldMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? rDFieldTextControllerValidator;
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  @override
  void initState(BuildContext context) {
    nameFieldTextControllerValidator = _nameFieldTextControllerValidator;
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    venFieldFocusNode?.dispose();
    venFieldTextController?.dispose();

    rDFieldFocusNode?.dispose();
    rDFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();
  }
}
