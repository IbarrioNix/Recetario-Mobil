import '/components/button32_widget.dart';
import '/components/checkbox22_widget.dart';
import '/components/nutrient_badge2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receta_widget.dart' show RecetaWidget;
import 'package:flutter/material.dart';

class RecetaModel extends FlutterFlowModel<RecetaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NutrientBadge.
  late NutrientBadge2Model nutrientBadgeModel1;
  // Model for NutrientBadge.
  late NutrientBadge2Model nutrientBadgeModel2;
  // Model for NutrientBadge.
  late NutrientBadge2Model nutrientBadgeModel3;
  // Model for NutrientBadge.
  late NutrientBadge2Model nutrientBadgeModel4;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for Checkbox2.
  late Checkbox22Model checkbox2Model1;
  // Model for Checkbox2.
  late Checkbox22Model checkbox2Model2;
  // Model for Checkbox2.
  late Checkbox22Model checkbox2Model3;
  // Model for Checkbox2.
  late Checkbox22Model checkbox2Model4;
  // Model for Checkbox2.
  late Checkbox22Model checkbox2Model5;
  // Model for Button3.
  late Button32Model button3Model;

  @override
  void initState(BuildContext context) {
    nutrientBadgeModel1 = createModel(context, () => NutrientBadge2Model());
    nutrientBadgeModel2 = createModel(context, () => NutrientBadge2Model());
    nutrientBadgeModel3 = createModel(context, () => NutrientBadge2Model());
    nutrientBadgeModel4 = createModel(context, () => NutrientBadge2Model());
    checkbox2Model1 = createModel(context, () => Checkbox22Model());
    checkbox2Model2 = createModel(context, () => Checkbox22Model());
    checkbox2Model3 = createModel(context, () => Checkbox22Model());
    checkbox2Model4 = createModel(context, () => Checkbox22Model());
    checkbox2Model5 = createModel(context, () => Checkbox22Model());
    button3Model = createModel(context, () => Button32Model());
  }

  @override
  void dispose() {
    nutrientBadgeModel1.dispose();
    nutrientBadgeModel2.dispose();
    nutrientBadgeModel3.dispose();
    nutrientBadgeModel4.dispose();
    tabBarController?.dispose();
    checkbox2Model1.dispose();
    checkbox2Model2.dispose();
    checkbox2Model3.dispose();
    checkbox2Model4.dispose();
    checkbox2Model5.dispose();
    button3Model.dispose();
  }
}
