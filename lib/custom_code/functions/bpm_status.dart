import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:study_buddy/flutter_flow/custom_functions.dart';
import 'package:study_buddy/flutter_flow/lat_lng.dart';
import 'package:study_buddy/flutter_flow/place.dart';
import 'package:study_buddy/flutter_flow/uploaded_file.dart';
import 'package:study_buddy/backend/backend.dart';

import 'package:study_buddy/flutter_flow/custom_functions.dart';
import 'package:study_buddy/flutter_flow/lat_lng.dart';
import 'package:study_buddy/flutter_flow/place.dart';
import 'package:study_buddy/flutter_flow/uploaded_file.dart';
import 'package:study_buddy/backend/backend.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

String bpmStatus(int currentBpm) {
  if (currentBpm > 100) return "Alto";
  if (currentBpm > 90) return "Moderado";
  return "Calma";
}
