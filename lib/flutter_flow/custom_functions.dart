import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference parseReferenceCategory(String uid) {
  String ruta = '/categories/${uid}';
  DocumentReference store = FirebaseFirestore.instance.doc(ruta);
  return store;
}

DocumentReference parseReferencePlan(String uid) {
  String ruta = '/plans/${uid}';
  DocumentReference store = FirebaseFirestore.instance.doc(ruta);
  return store;
}

String getSlug(String texto) {
  String slug = texto.toLowerCase();

  // Elimina los caracteres especiales y los espacios
  slug = slug.replaceAll(RegExp(r'[^\w\s-]'), '');

  // Reemplaza los espacios con guiones
  slug = slug.replaceAll(RegExp(r'\s+'), '-');

  // Elimina múltiples guiones consecutivos
  slug = slug.replaceAll(RegExp(r'-+'), '-');

  // Elimina guiones al principio y al final
  slug = slug.trim().replaceAll(RegExp(r'^-|-$'), '');

  return slug;
}

bool isSlug(String texto) {
  return RegExp(r'^[a-z0-9]+(?:-[a-z0-9]+)*$').hasMatch(texto);
}

int parseInteger(String num) {
  return int.parse(num);
}
