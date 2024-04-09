import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'extra_switch_component_model.dart';
export 'extra_switch_component_model.dart';

class ExtraSwitchComponentWidget extends StatefulWidget {
  const ExtraSwitchComponentWidget({
    super.key,
    required this.status,
    required this.uid,
  });

  final bool? status;
  final DocumentReference? uid;

  @override
  State<ExtraSwitchComponentWidget> createState() =>
      _ExtraSwitchComponentWidgetState();
}

class _ExtraSwitchComponentWidgetState
    extends State<ExtraSwitchComponentWidget> {
  late ExtraSwitchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtraSwitchComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue ??= widget.status!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue);
        if (newValue) {
          await widget.uid!.update(createExtrasRecordData(
            status: true,
          ));
        } else {
          await widget.uid!.update(createExtrasRecordData(
            status: false,
          ));
        }
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
