import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'delivery_component_widget.dart' show DeliveryComponentWidget;
import 'package:flutter/material.dart';

class DeliveryComponentModel extends FlutterFlowModel<DeliveryComponentWidget> {
  ///  Local state fields for this component.

  List<PrecioBarrioStruct> precioBarrio = [];
  void addToPrecioBarrio(PrecioBarrioStruct item) => precioBarrio.add(item);
  void removeFromPrecioBarrio(PrecioBarrioStruct item) =>
      precioBarrio.remove(item);
  void removeAtIndexFromPrecioBarrio(int index) => precioBarrio.removeAt(index);
  void insertAtIndexInPrecioBarrio(int index, PrecioBarrioStruct item) =>
      precioBarrio.insert(index, item);
  void updatePrecioBarrioAtIndex(
          int index, Function(PrecioBarrioStruct) updateFn) =>
      precioBarrio[index] = updateFn(precioBarrio[index]);

  String selectorPrice = 'Precio Fijo';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for BarrioField widget.
  FocusNode? barrioFieldFocusNode;
  TextEditingController? barrioFieldController;
  String? Function(BuildContext, String?)? barrioFieldControllerValidator;
  // State field(s) for PriceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldController;
  String? Function(BuildContext, String?)? priceFieldControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    barrioFieldFocusNode?.dispose();
    barrioFieldController?.dispose();

    priceFieldFocusNode?.dispose();
    priceFieldController?.dispose();
  }
}
