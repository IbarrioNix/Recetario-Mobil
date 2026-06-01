import '/components/button4_widget.dart';
import '/components/text_field3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modificar_datos_widget.dart' show ModificarDatosWidget;
import 'package:flutter/material.dart';

class ModificarDatosModel extends FlutterFlowModel<ModificarDatosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField3Model textFieldModel1;
  // Model for TextField.
  late TextField3Model textFieldModel2;
  // Model for TextField.
  late TextField3Model textFieldModel3;
  // Model for TextField.
  late TextField3Model textFieldModel4;
  // Model for Button.
  late Button4Model buttonModel1;
  // Model for Button.
  late Button4Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField3Model());
    textFieldModel2 = createModel(context, () => TextField3Model());
    textFieldModel3 = createModel(context, () => TextField3Model());
    textFieldModel4 = createModel(context, () => TextField3Model());
    buttonModel1 = createModel(context, () => Button4Model());
    buttonModel2 = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
