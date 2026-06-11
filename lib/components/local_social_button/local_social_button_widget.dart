import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'local_social_button_model.dart';
export 'local_social_button_model.dart';

class LocalSocialButtonWidget extends StatefulWidget {
  const LocalSocialButtonWidget({
    super.key,
    String? tapAction,
    String? company,
    String? label,
  })  : this.tapAction = tapAction ?? '',
        this.company =
            company ?? 'https://cdn.simpleicons.org/google/0f172a.svg',
        this.label = label ?? 'Google';

  final String tapAction;
  final String company;
  final String label;

  @override
  State<LocalSocialButtonWidget> createState() =>
      _LocalSocialButtonWidgetState();
}

class _LocalSocialButtonWidgetState extends State<LocalSocialButtonWidget> {
  late LocalSocialButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalSocialButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(32.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child: Container(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.network(
                      valueOrDefault<String>(
                        widget!.company,
                        'https://cdn.simpleicons.org/google/0f172a.svg',
                      ),
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      valueOrDefault<String>(
                        'Continuar con ${widget!.label}',
                        'Continuar con Google',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                            lineHeight: 1.2,
                          ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
