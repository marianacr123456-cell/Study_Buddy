
import 'package:study_buddy/components/nav_item/nav_item_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';

import 'package:study_buddy/components/nav_item/nav_item_widget.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_theme.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_util.dart';
import 'package:study_buddy/flutter_flow/flutter_flow_widgets.dart';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_nav7_model.dart';
export 'bottom_nav7_model.dart';

class BottomNav7Widget extends StatefulWidget {
  const BottomNav7Widget({super.key});

  @override
  State<BottomNav7Widget> createState() => _BottomNav7WidgetState();
}

class _BottomNav7WidgetState extends State<BottomNav7Widget> {
  late BottomNav7Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNav7Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  wrapWithModel(
                    model: _model.navItemModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Inicio',
                      icon: Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      target: 'inicio',
                      selected: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navItemModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Calma',
                      icon: Icon(
                        Icons.spa_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      target: 'calma',
                      selected: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navItemModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Tips',
                      icon: Icon(
                        Icons.lightbulb_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      target: 'tips',
                      selected: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navItemModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Progreso',
                      icon: Icon(
                        Icons.bar_chart_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      target: 'progreso',
                      selected: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navItemModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Perfil',
                      icon: Icon(
                        Icons.person_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      target: 'perfil',
                      selected: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
