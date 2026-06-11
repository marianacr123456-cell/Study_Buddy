import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_chip_model.dart';
export 'category_chip_model.dart';

class CategoryChipWidget extends StatefulWidget {
  const CategoryChipWidget({
    super.key,
    String? selected,
    String? label,
  })  : this.selected = selected ?? '',
        this.label = label ?? 'Todos';

  final String selected;
  final String label;

  @override
  State<CategoryChipWidget> createState() => _CategoryChipWidgetState();
}

class _CategoryChipWidgetState extends State<CategoryChipWidget> {
  late CategoryChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        FFAppState().filterCategory = widget!.label;
        _model.updatePage(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.selected == 'false'
                ? FlutterFlowTheme.of(context).secondaryBackground
                : FlutterFlowTheme.of(context).primary,
            Color(0x00000000),
          ),
          borderRadius: BorderRadius.circular(9999.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.selected == 'false'
                  ? FlutterFlowTheme.of(context).alternate
                  : FlutterFlowTheme.of(context).primary,
              Color(0x00000000),
            ),
            width: valueOrDefault<double>(
              widget!.selected == 'false' ? 1.0 : 1.0,
              0.0,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 8.0),
          child: Container(
            child: Text(
              valueOrDefault<String>(
                widget!.label,
                'Todos',
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      widget!.selected == 'false'
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).onPrimary,
                      Color(0x00000000),
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    lineHeight: 1.2,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
