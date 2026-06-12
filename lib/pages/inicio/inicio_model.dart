
import 'package:study_buddy/components/activity_card2/activity_card2_widget.dart';
import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_icon_button.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'package:study_buddy/components/activity_card2/activity_card2_widget.dart';
import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_icon_button.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'inicio_widget.dart' show InicioWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;
  // Model for ActivityCard.
  late ActivityCard2Model activityCardModel1;
  // Model for ActivityCard.
  late ActivityCard2Model activityCardModel2;
  // Model for ActivityCard.
  late ActivityCard2Model activityCardModel3;
  // Model for ActivityCard.
  late ActivityCard2Model activityCardModel4;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
    activityCardModel1 = createModel(context, () => ActivityCard2Model());
    activityCardModel2 = createModel(context, () => ActivityCard2Model());
    activityCardModel3 = createModel(context, () => ActivityCard2Model());
    activityCardModel4 = createModel(context, () => ActivityCard2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    activityCardModel1.dispose();
    activityCardModel2.dispose();
    activityCardModel3.dispose();
    activityCardModel4.dispose();
  }
}
