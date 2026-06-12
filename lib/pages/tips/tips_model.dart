
import 'package:study_buddy/components/category_chip/category_chip_widget.dart';
import 'package:study_buddy/components/tip_card/tip_card_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'package:study_buddy/components/category_chip/category_chip_widget.dart';
import 'package:study_buddy/components/tip_card/tip_card_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'tips_widget.dart' show TipsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TipsModel extends FlutterFlowModel<TipsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel4;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel5;
  // Model for TipCard.
  late TipCardModel tipCardModel1;
  // Model for TipCard.
  late TipCardModel tipCardModel2;
  // Model for TipCard.
  late TipCardModel tipCardModel3;

  @override
  void initState(BuildContext context) {
    categoryChipModel1 = createModel(context, () => CategoryChipModel());
    categoryChipModel2 = createModel(context, () => CategoryChipModel());
    categoryChipModel3 = createModel(context, () => CategoryChipModel());
    categoryChipModel4 = createModel(context, () => CategoryChipModel());
    categoryChipModel5 = createModel(context, () => CategoryChipModel());
    tipCardModel1 = createModel(context, () => TipCardModel());
    tipCardModel2 = createModel(context, () => TipCardModel());
    tipCardModel3 = createModel(context, () => TipCardModel());
  }

  @override
  void dispose() {
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    categoryChipModel5.dispose();
    tipCardModel1.dispose();
    tipCardModel2.dispose();
    tipCardModel3.dispose();
  }
}
