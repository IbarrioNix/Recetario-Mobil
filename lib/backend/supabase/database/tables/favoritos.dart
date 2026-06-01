import '../database.dart';

class FavoritosTable extends SupabaseTable<FavoritosRow> {
  @override
  String get tableName => 'favoritos';

  @override
  FavoritosRow createRow(Map<String, dynamic> data) => FavoritosRow(data);
}

class FavoritosRow extends SupabaseDataRow {
  FavoritosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get mealId => getField<String>('meal_id')!;
  set mealId(String value) => setField<String>('meal_id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get imagen => getField<String>('imagen');
  set imagen(String? value) => setField<String>('imagen', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get origen => getField<String>('origen');
  set origen(String? value) => setField<String>('origen', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
