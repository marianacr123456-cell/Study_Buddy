
import 'package:study_buddy/components/achievement_badge/achievement_badge_widget.dart';
import 'package:study_buddy/components/bottom_nav6/bottom_nav6_widget.dart';
import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/components/menu_item/menu_item_widget.dart';
import 'package:study_buddy/components/stat_item/stat_item_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'package:study_buddy/components/achievement_badge/achievement_badge_widget.dart';
import 'package:study_buddy/components/bottom_nav6/bottom_nav6_widget.dart';
import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/components/menu_item/menu_item_widget.dart';
import 'package:study_buddy/components/stat_item/stat_item_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatItem.
  late StatItemModel statItemModel1;
  // Model for StatItem.
  late StatItemModel statItemModel2;
  // Model for StatItem.
  late StatItemModel statItemModel3;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel1;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel2;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel3;
  // Model for MenuItem.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem.
  late MenuItemModel menuItemModel3;
  // Model for MenuItem.
  late MenuItemModel menuItemModel4;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for BottomNav.
  late BottomNav6Model bottomNavModel;

  @override
  void initState(BuildContext context) {
    statItemModel1 = createModel(context, () => StatItemModel());
    statItemModel2 = createModel(context, () => StatItemModel());
    statItemModel3 = createModel(context, () => StatItemModel());
    achievementBadgeModel1 =
        createModel(context, () => AchievementBadgeModel());
    achievementBadgeModel2 =
        createModel(context, () => AchievementBadgeModel());
    achievementBadgeModel3 =
        createModel(context, () => AchievementBadgeModel());
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    buttonModel = createModel(context, () => ButtonModel());
    bottomNavModel = createModel(context, () => BottomNav6Model());
  }

  @override
  void dispose() {
    statItemModel1.dispose();
    statItemModel2.dispose();
    statItemModel3.dispose();
    achievementBadgeModel1.dispose();
    achievementBadgeModel2.dispose();
    achievementBadgeModel3.dispose();
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
    menuItemModel4.dispose();
    buttonModel.dispose();
    bottomNavModel.dispose();
  }
}
