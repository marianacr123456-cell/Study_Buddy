
import 'package:study_buddy/components/academic_event/academic_event_widget.dart';
import 'package:study_buddy/components/metric_card/metric_card_widget.dart';
import 'package:study_buddy/components/switch_component/switch_component_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_charts.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_icon_button.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/flutter_flow/custom_functions.dart' as functions;

import 'package:study_buddy/components/academic_event/academic_event_widget.dart';
import 'package:study_buddy/components/metric_card/metric_card_widget.dart';
import 'package:study_buddy/components/switch_component/switch_component_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_charts.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_icon_button.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/flutter_flow/custom_functions.dart' as functions;

import 'asistente_widget.dart' show AsistenteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AsistenteModel extends FlutterFlowModel<AsistenteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MetricCard.
  late MetricCardModel metricCardModel1;
  // Model for MetricCard.
  late MetricCardModel metricCardModel2;
  // Model for AcademicEvent.
  late AcademicEventModel academicEventModel1;
  // Model for AcademicEvent.
  late AcademicEventModel academicEventModel2;
  // Model for Switch.
  late SwitchComponentModel switchModel;

  @override
  void initState(BuildContext context) {
    metricCardModel1 = createModel(context, () => MetricCardModel());
    metricCardModel2 = createModel(context, () => MetricCardModel());
    academicEventModel1 = createModel(context, () => AcademicEventModel());
    academicEventModel2 = createModel(context, () => AcademicEventModel());
    switchModel = createModel(context, () => SwitchComponentModel());
  }

  @override
  void dispose() {
    metricCardModel1.dispose();
    metricCardModel2.dispose();
    academicEventModel1.dispose();
    academicEventModel2.dispose();
    switchModel.dispose();
  }
}
