import 'backend/backend.dart';
import 'components/mood_log_item/mood_log_item_widget.dart';
import 'components/stat_card/stat_card_widget.dart';
import 'components/tab_item/tab_item_widget.dart';
import 'flutter_flow/flutter_flow_charts.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'progreso_widget.dart' show ProgresoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProgresoModel extends FlutterFlowModel<ProgresoWidget> {
  ///  Local state fields for this page.

  String? viewRange = 'Semana';

  ///  State fields for stateful widgets in this page.

  // Model for TabItem.
  late TabItemModel tabItemModel1;
  // Model for TabItem.
  late TabItemModel tabItemModel2;
  // Model for StatCard.
  late StatCardModel statCardModel1;
  // Model for StatCard.
  late StatCardModel statCardModel2;

  @override
  void initState(BuildContext context) {
    tabItemModel1 = createModel(context, () => TabItemModel());
    tabItemModel2 = createModel(context, () => TabItemModel());
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
  }

  @override
  void dispose() {
    tabItemModel1.dispose();
    tabItemModel2.dispose();
    statCardModel1.dispose();
    statCardModel2.dispose();
  }
}
