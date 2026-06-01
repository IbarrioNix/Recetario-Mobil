import '/flutter_flow/flutter_flow_util.dart';
import 'text_field3_copy_widget.dart' show TextField3CopyWidget;
import 'package:flutter/material.dart';

class TextField3CopyModel extends FlutterFlowModel<TextField3CopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  late bool inputVisibility;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputVisibility = false;
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
