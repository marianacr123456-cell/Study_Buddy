import 'components/button/button_widget.dart';
import 'components/mood_card/mood_card_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'index.dart';
import 'sentir_widget.dart' show SentirWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SentirModel extends FlutterFlowModel<SentirWidget> {
  ///  Local state fields for this page.

  String? selectedMood;

  String? note;

  ///  State fields for stateful widgets in this page.

  // Model for MoodCard.
  late MoodCardModel moodCardModel1;
  // Model for MoodCard.
  late MoodCardModel moodCardModel2;
  // Model for MoodCard.
  late MoodCardModel moodCardModel3;
  // Model for MoodCard.
  late MoodCardModel moodCardModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    moodCardModel1 = createModel(context, () => MoodCardModel());
    moodCardModel2 = createModel(context, () => MoodCardModel());
    moodCardModel3 = createModel(context, () => MoodCardModel());
    moodCardModel4 = createModel(context, () => MoodCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    moodCardModel1.dispose();
    moodCardModel2.dispose();
    moodCardModel3.dispose();
    moodCardModel4.dispose();
    buttonModel.dispose();
  }
}
