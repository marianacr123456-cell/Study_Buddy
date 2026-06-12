
import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/components/local_social_button/local_social_button_widget.dart';
import 'package:study_buddy/components/text_field/text_field_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'package:study_buddy/components/button/button_widget.dart';
import 'package:study_buddy/components/local_social_button/local_social_button_widget.dart';
import 'package:study_buddy/components/text_field/text_field_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:study_buddy/index.dart';

import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  String? error;

  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for LocalSocialButton.
  late LocalSocialButtonModel localSocialButtonModel;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    localSocialButtonModel =
        createModel(context, () => LocalSocialButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel1.dispose();
    localSocialButtonModel.dispose();
    buttonModel2.dispose();
  }
}
