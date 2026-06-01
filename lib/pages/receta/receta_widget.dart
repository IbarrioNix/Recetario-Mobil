import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button3_widget.dart';
import '/components/checkbox2_widget.dart';
import '/components/nutrient_badge_widget.dart';
import '/components/tab_group_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'receta_model.dart';
export 'receta_model.dart';

class RecetaWidget extends StatefulWidget {
  const RecetaWidget({
    super.key,
    required this.mealId,
    required this.nombre,
    required this.imagen,
    required this.ig1,
    required this.ig2,
    required this.ig3,
    required this.ig4,
    required this.ig5,
    required this.instrucciones,
    required this.video,
    required this.medida,
    required this.medida2,
    required this.medida3,
    required this.medida4,
    required this.medida5,
    required this.categoria,
    required this.origen,
  });

  final String? mealId;
  final String? nombre;
  final String? imagen;
  final String? ig1;
  final String? ig2;
  final String? ig3;
  final String? ig4;
  final String? ig5;
  final String? instrucciones;
  final String? video;
  final String? medida;
  final String? medida2;
  final String? medida3;
  final String? medida4;
  final String? medida5;
  final String? categoria;
  final String? origen;

  static String routeName = 'Receta';
  static String routePath = '/receta';

  @override
  State<RecetaWidget> createState() => _RecetaWidgetState();
}

class _RecetaWidgetState extends State<RecetaWidget> {
  late RecetaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecetaModel());
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
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Container(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ClipRRect(
                            child: Container(
                              height: 340.0,
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                children: [
                                  CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/delicious%20gourmet%20food%20plate%20close%20up',
                                    height: 340.0,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                  Container(
                                    height: 340.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          widget.imagen!,
                                        ).image,
                                      ),
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          Colors.transparent
                                        ],
                                        stops: [0.0, 0.4],
                                        begin: AlignmentDirectional(0.0, 1.0),
                                        end: AlignmentDirectional(0, -1.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 34.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent20,
                                              borderRadius:
                                                  BorderRadius.circular(9999.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.origen,
                                                      'Origen',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 6.0)),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 34.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary10,
                                              borderRadius:
                                                  BorderRadius.circular(9999.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.categoria,
                                                      'Categoria',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 6.0)),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.nombre,
                                        'Nombre',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.schedule_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 16.0,
                                            ),
                                            Text(
                                              random_data
                                                  .randomInteger(2, 28)
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
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
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons
                                                  .local_fire_department_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 16.0,
                                            ),
                                            Text(
                                              random_data
                                                  .randomInteger(40, 500)
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
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
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.bar_chart_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 16.0,
                                            ),
                                            Text(
                                              'Fácil',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
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
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.nutrientBadgeModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: NutrientBadgeWidget(
                                        label: 'Proteína',
                                        value: random_data
                                            .randomInteger(5, 50)
                                            .toString(),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.nutrientBadgeModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: NutrientBadgeWidget(
                                        label: 'Carbs',
                                        value: random_data
                                            .randomInteger(5, 50)
                                            .toString(),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.nutrientBadgeModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: NutrientBadgeWidget(
                                        label: 'Grasas',
                                        value: random_data
                                            .randomInteger(5, 50)
                                            .toString(),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.nutrientBadgeModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: NutrientBadgeWidget(
                                        label: 'Fibra',
                                        value: random_data
                                            .randomInteger(5, 50)
                                            .toString(),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                                wrapWithModel(
                                  model: _model.tabGroupModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TabGroupWidget(
                                    label1: 'Ingredientes',
                                    label2: 'Preparación',
                                    label2Present: true,
                                    label3: 'Reseñas',
                                    label3Present: true,
                                    label4: '',
                                    label4Present: false,
                                    label5: '',
                                    label5Present: false,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Lo que necesitarás',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: wrapWithModel(
                                            model: _model.checkboxModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Checkbox2Widget(
                                              label: widget.ig1,
                                              subtitle: widget.medida,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              isChecked: true,
                                              hasSubtitle: true,
                                              disabled: false,
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.checkboxModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Checkbox2Widget(
                                            label: widget.ig2,
                                            subtitle: widget.medida2,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            isChecked: true,
                                            hasSubtitle: true,
                                            disabled: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.checkboxModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Checkbox2Widget(
                                            label: widget.ig3,
                                            subtitle: widget.medida3,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            isChecked: false,
                                            hasSubtitle: true,
                                            disabled: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.checkboxModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Checkbox2Widget(
                                            label: widget.ig4,
                                            subtitle: widget.medida4,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            isChecked: false,
                                            hasSubtitle: true,
                                            disabled: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.checkboxModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Checkbox2Widget(
                                            label: widget.ig5,
                                            subtitle: widget.medida5,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            isChecked: false,
                                            hasSubtitle: true,
                                            disabled: false,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(widget.video!);
                                  },
                                  child: wrapWithModel(
                                    model: _model.button3Model,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button3Widget(
                                      content: 'Empezar a Cocinar',
                                      icon: Icon(
                                        Icons.play_arrow_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .onPrimary,
                                        size: 16.0,
                                      ),
                                      iconPresent: true,
                                      iconEndPresent: false,
                                      variant: 'primary',
                                      size: 'large',
                                      fullWidth: true,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: 100.0,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Container(
                    child: Container(
                      height: 68.0,
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 9999.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 9999.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.favorite_border_rounded,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  await FavoritosTable().insert({
                                    'user_id': currentUserUid,
                                    'meal_id': widget.mealId,
                                    'nombre': widget.nombre,
                                    'categoria': widget.categoria,
                                    'origen': widget.origen,
                                    'imagen': widget.imagen,
                                  });
                                },
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
