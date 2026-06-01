import '/backend/supabase/supabase.dart';
import '/components/button4_widget.dart';
import '/components/text_field3_cop_widget.dart';
import '/components/text_field3_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modificar_datos_widget.dart' show ModificarDatosWidget;
import 'package:flutter/material.dart';

class ModificarDatosModel extends FlutterFlowModel<ModificarDatosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField3CopModel textFieldModel1;
  // Model for TextField.
  late TextField3CopModel textFieldModel2;
  // Model for TextField3Copy component.
  late TextField3CopyModel textField3CopyModel;
  // Model for Button.
  late Button4Model buttonModel1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? update;
  // Model for Button.
  late Button4Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField3CopModel());
    textFieldModel2 = createModel(context, () => TextField3CopModel());
    textField3CopyModel = createModel(context, () => TextField3CopyModel());
    buttonModel1 = createModel(context, () => Button4Model());
    buttonModel2 = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textField3CopyModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
