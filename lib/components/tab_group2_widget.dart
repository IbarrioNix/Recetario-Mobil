import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tab_group2_model.dart';
export 'tab_group2_model.dart';

class TabGroup2Widget extends StatefulWidget {
  const TabGroup2Widget({
    super.key,
    String? labelLeft,
    String? labelRight,
    String? label1,
    String? label2,
    String? label3,
    String? selected,
  })  : this.labelLeft = labelLeft ?? 'Ingredientes',
        this.labelRight = labelRight ?? 'Preparación',
        this.label1 = label1 ?? 'All',
        this.label2 = label2 ?? 'Breakfast',
        this.label3 = label3 ?? 'Dinner',
        this.selected = selected ?? 'left';

  final String labelLeft;
  final String labelRight;
  final String label1;
  final String label2;
  final String label3;
  final String selected;

  @override
  State<TabGroup2Widget> createState() => _TabGroup2WidgetState();
}

class _TabGroup2WidgetState extends State<TabGroup2Widget> {
  late TabGroup2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabGroup2Model());
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
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.selected == 'right'
                        ? Colors.transparent
                        : Color(0xFFD1F2F2),
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.labelLeft,
                            'Ingredientes',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: widget.selected == 'right'
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF006064),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.selected == 'right'
                        ? Color(0xFFD1F2F2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.labelRight,
                            'Preparación',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: widget.selected == 'right'
                                        ? Color(0xFF006064)
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        ),
      ),
    );
  }
}
