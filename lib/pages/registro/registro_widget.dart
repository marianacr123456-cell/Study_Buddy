import 'components/button/button_widget.dart';
import 'components/local_social_button/local_social_button_widget.dart';
import 'components/text_field/text_field_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';
import 'registro_model.dart';
export 'registro_model.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({super.key});

  static String routeName = 'Registro';
  static String routePath = '/registro';

  @override
  State<RegistroWidget> createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  late RegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 0.0,
                    height: 0.0,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 420.0,
                                  child: Stack(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    children: [
                                      LayoutBuilder(
                                        builder: (context, constraints) {
                                          return SimplexGradientShaderFill(
                                            width: constraints.maxWidth.isFinite
                                                ? constraints.maxWidth
                                                : 200.0,
                                            height:
                                                constraints.maxHeight.isFinite
                                                    ? constraints.maxHeight
                                                    : 200.0,
                                            params: ShaderParams(values: {
                                              'gradientAngle': 180.0,
                                              'gradientScale': 0.89,
                                              'gradientOffset': 0.0,
                                              'noiseIntensity': 0.32,
                                              'ditherStrength': 2.51,
                                              'ditherScale': 0.29,
                                              'animSpeed': 1.46,
                                              'noiseScale': 6.36,
                                              'sharpness': 2.2,
                                              'colorCount': 6.76,
                                              'softness': 0.0,
                                              'exposure': 1.0,
                                              'contrast': 1.0,
                                              'bumpStrength': 0.0,
                                              'lightDirX': 0.55,
                                              'lightDirY': 0.45,
                                              'lightDirZ': 1.0,
                                              'lightIntensity': 1.15,
                                              'ambient': 0.7,
                                              'specular': 0.29,
                                              'shininess': 40.76,
                                              'metallic': 1.0,
                                              'roughness': 1.0,
                                              'edgeFade': 1.72,
                                              'edgeFadeMode': 0.0
                                            }, colors: {
                                              'color0':
                                                  FlutterFlowTheme.of(context)
                                                      .primary15,
                                              'color1':
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              'color2':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color3':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color4':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color5':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color6':
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              'color7': Color(0x00808080),
                                              'color8': Color(0x00808080),
                                              'color9': Color(0x00808080)
                                            }),
                                            animationMode:
                                                ShaderAnimationMode.continuous,
                                            cache: false,
                                          );
                                        },
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(32.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 60.0,
                                              ),
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          32.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Icon(
                                                      Icons.favorite_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 56.0,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.8, -0.8),
                                                      child: Container(
                                                        child: Icon(
                                                          Icons
                                                              .show_chart_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Study Buddy',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Tu compañero de calma',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ].divide(SizedBox(height: 32.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.textFieldModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    label: 'Correo electrónico',
                                                    labelPresent: true,
                                                    helper: '',
                                                    helperPresent: false,
                                                    leadingIcon: Icon(
                                                      Icons
                                                          .mail_outline_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    leadingIconPresent: true,
                                                    trailingIconPresent: false,
                                                    hint: 'angela@estudio.com',
                                                    value: _model.email,
                                                    onChange: '',
                                                    onSubmit: '',
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.textFieldModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    label: 'Contraseña',
                                                    labelPresent: true,
                                                    helper: '',
                                                    helperPresent: false,
                                                    leadingIcon: Icon(
                                                      Icons.lock_open_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    leadingIconPresent: true,
                                                    trailingIcon: Icon(
                                                      Icons
                                                          .visibility_off_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    trailingIconPresent: true,
                                                    hint: '••••••••',
                                                    value: _model.password,
                                                    onChange: '',
                                                    onSubmit: '',
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    InicioWidget.routeName);
                                              },
                                              child: wrapWithModel(
                                                model: _model.buttonModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ButtonWidget(
                                                  iconPresent: false,
                                                  iconEndPresent: false,
                                                  content: 'Iniciar sesión',
                                                  variant: 'primary',
                                                  size: 'large',
                                                  fullWidth: true,
                                                  loading: false,
                                                  disabled: false,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.localSocialButtonModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: LocalSocialButtonWidget(
                                                tapAction:
                                                    'toast(\'Google login coming soon\')',
                                                company:
                                                    'https://cdn.simpleicons.org/google/0f172a.svg',
                                                label: 'Google',
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '¿No tienes cuenta?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.goNamed(
                                                        InicioWidget.routeName);
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model.buttonModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ButtonWidget(
                                                      iconPresent: false,
                                                      iconEndPresent: false,
                                                      content: 'Regístrate',
                                                      variant: 'ghost',
                                                      size: 'small',
                                                      fullWidth: false,
                                                      loading: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ].divide(SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
