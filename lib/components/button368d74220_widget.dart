import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'button368d74220_model.dart';
export 'button368d74220_model.dart';

class Button368d74220Widget extends StatefulWidget {
  const Button368d74220Widget({
    super.key,
    String? bg,
    String? color,
    String? content,
    String? icon,
  })  : this.bg = bg ?? 'error',
        this.color = color ?? 'on_error',
        this.content = content ?? 'Cerrar Sesión',
        this.icon = icon ?? 'logout_rounded';

  final String bg;
  final String color;
  final String content;
  final String icon;

  @override
  State<Button368d74220Widget> createState() => _Button368d74220WidgetState();
}

class _Button368d74220WidgetState extends State<Button368d74220Widget> {
  late Button368d74220Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Button368d74220Model());
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
        color: FlutterFlowTheme.of(context).error,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
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
                Icon(
                  Icons.logout_rounded,
                  color: FlutterFlowTheme.of(context).onError,
                  size: 18.0,
                ),
                Text(
                  'Cerrar Sesión',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).onError,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
