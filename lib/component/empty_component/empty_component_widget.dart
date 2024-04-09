import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_component_model.dart';
export 'empty_component_model.dart';

class EmptyComponentWidget extends StatefulWidget {
  const EmptyComponentWidget({
    super.key,
    this.text,
  });

  final String? text;

  @override
  State<EmptyComponentWidget> createState() => _EmptyComponentWidgetState();
}

class _EmptyComponentWidgetState extends State<EmptyComponentWidget> {
  late EmptyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/papel_(1).png',
              width: 72.0,
              height: 72.0,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            widget.text!,
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(height: 18.0)),
      ),
    );
  }
}
