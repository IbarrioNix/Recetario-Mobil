import '/components/button3_widget.dart';
import '/components/checkbox2_widget.dart';
import '/components/nutrient_badge_widget.dart';
import '/components/tab_group_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receta_widget.dart' show RecetaWidget;
import 'package:flutter/material.dart';

class RecetaModel extends FlutterFlowModel<RecetaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NutrientBadge.
  late NutrientBadgeModel nutrientBadgeModel1;
  // Model for NutrientBadge.
  late NutrientBadgeModel nutrientBadgeModel2;
  // Model for NutrientBadge.
  late NutrientBadgeModel nutrientBadgeModel3;
  // Model for NutrientBadge.
  late NutrientBadgeModel nutrientBadgeModel4;
  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for Checkbox.
  late Checkbox2Model checkboxModel1;
  // Model for Checkbox.
  late Checkbox2Model checkboxModel2;
  // Model for Checkbox.
  late Checkbox2Model checkboxModel3;
  // Model for Checkbox.
  late Checkbox2Model checkboxModel4;
  // Model for Checkbox.
  late Checkbox2Model checkboxModel5;
  // Model for Button3.
  late Button3Model button3Model;

  @override
  void initState(BuildContext context) {
    nutrientBadgeModel1 = createModel(context, () => NutrientBadgeModel());
    nutrientBadgeModel2 = createModel(context, () => NutrientBadgeModel());
    nutrientBadgeModel3 = createModel(context, () => NutrientBadgeModel());
    nutrientBadgeModel4 = createModel(context, () => NutrientBadgeModel());
    tabGroupModel = createModel(context, () => TabGroupModel());
    checkboxModel1 = createModel(context, () => Checkbox2Model());
    checkboxModel2 = createModel(context, () => Checkbox2Model());
    checkboxModel3 = createModel(context, () => Checkbox2Model());
    checkboxModel4 = createModel(context, () => Checkbox2Model());
    checkboxModel5 = createModel(context, () => Checkbox2Model());
    button3Model = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    nutrientBadgeModel1.dispose();
    nutrientBadgeModel2.dispose();
    nutrientBadgeModel3.dispose();
    nutrientBadgeModel4.dispose();
    tabGroupModel.dispose();
    checkboxModel1.dispose();
    checkboxModel2.dispose();
    checkboxModel3.dispose();
    checkboxModel4.dispose();
    checkboxModel5.dispose();
    button3Model.dispose();
  }
}
