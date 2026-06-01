import '/backend/supabase/supabase.dart';
import '/components/button3_widget.dart';
import '/components/profile_option_widget.dart';
import '/components/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<UsuariosRow>? nombre;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel1;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel2;
  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // Model for Button3.
  late Button3Model button3Model;

  @override
  void initState(BuildContext context) {
    profileOptionModel1 = createModel(context, () => ProfileOptionModel());
    profileOptionModel2 = createModel(context, () => ProfileOptionModel());
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    button3Model = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    profileOptionModel1.dispose();
    profileOptionModel2.dispose();
    switchComponentModel.dispose();
    button3Model.dispose();
  }
}
