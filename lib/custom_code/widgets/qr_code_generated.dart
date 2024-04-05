// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerated extends StatefulWidget {
  const QrCodeGenerated({
    super.key,
    required this.width,
    required this.height,
    required this.text,
  });

  final int width;
  final int height;
  final String text;

  @override
  State<QrCodeGenerated> createState() => _QrCodeGeneratedState();
}

class _QrCodeGeneratedState extends State<QrCodeGenerated> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: QrImageView(
        data: text,
        version: QrVersions.auto,
        size: width,
        gapless: false,
      ),
    );
  }
}
