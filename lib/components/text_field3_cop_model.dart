import '/flutter_flow/flutter_flow_util.dart';
import 'text_field3_cop_widget.dart' show TextField3CopWidget;
import 'package:flutter/material.dart';

class TextField3CopModel extends FlutterFlowModel<TextField3CopWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
