import '/components/button368d74220_widget.dart';
import '/components/profile_option3_widget.dart';
import '/components/switch_component22_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileOption.
  late ProfileOption3Model profileOptionModel1;
  // Model for ProfileOption.
  late ProfileOption3Model profileOptionModel2;
  // Model for SwitchComponent2.
  late SwitchComponent22Model switchComponent2Model;
  // Model for Button368d74220.
  late Button368d74220Model button368d74220Model;

  @override
  void initState(BuildContext context) {
    profileOptionModel1 = createModel(context, () => ProfileOption3Model());
    profileOptionModel2 = createModel(context, () => ProfileOption3Model());
    switchComponent2Model =
        createModel(context, () => SwitchComponent22Model());
    button368d74220Model = createModel(context, () => Button368d74220Model());
  }

  @override
  void dispose() {
    profileOptionModel1.dispose();
    profileOptionModel2.dispose();
    switchComponent2Model.dispose();
    button368d74220Model.dispose();
  }
}
